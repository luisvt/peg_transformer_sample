// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import "package:peg_transformer_sample/arithmetic_parser.dart";
import "package:parser_error/parser_error.dart";

void main() {
  querySelector('#input').onChange.listen((e) {
    querySelector('#output').text = parse(e.target.value).toString();
  });
}

num parse(String string) {
  var parser = new ArithmeticParser(string);
  var result = parser.parse_Start();
  if (!parser.success) {
    var messages = [];
    for (var error in parser.errors()) {
      messages.add(new ParserErrorMessage(error.message, error.start, error.position));
    }

    var strings = ParserErrorFormatter.format(parser.text, messages);
    print(strings.join("\n"));
    throw new FormatException();
  }

  return result;
}

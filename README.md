# Peg Transformer Sample

This repository contains an arithmetic parser sample that uses [peg](https://pub.dartlang.org/packages/peg).

As you can see in the [pubspec.yaml](./pubspec.yaml) file you only need to do three things:

1. Add the transformer:

```yaml
...
transformers:
  #other transformers
  - peg
...
```

2. Create a dart file which contains the parser, for example: [arithmetic_parser.dart](./bin/arithmetic_parser.dart).
3. Create a peg file which contains the grammar, for example: [arithmetic_parser.peg](./bin/arithmetic_parser.peg).

Both dart and peg files should have the same name to be picked by the transformer.

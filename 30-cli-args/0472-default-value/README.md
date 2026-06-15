# 0472 — Default value

Uses apple's `swift-argument-parser` library and its `@Option` default-value feature. The `--count` option is an `Int` declared with a default of `1` (written as `@Option var count: Int = 1`); when the option is absent from the parsed argv, the parser supplies that default. To stay deterministic the program parses a fixed, hardcoded empty argv `[]` instead of the real process arguments, so it always prints the default `1`.

## Run

    swift run

# 0475 — Required option

Use Apple's `swift-argument-parser` library to declare a required option. The `@Option var id: Int` property has no default value, so the parser treats `--id` as required and fails if it is missing. For determinism the program parses a fixed argv `["--id", "42"]` instead of the real process arguments, then prints the parsed integer.

## Run

    swift run

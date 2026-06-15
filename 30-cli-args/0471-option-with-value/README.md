# 0471 — Option with value

Uses Apple's `swift-argument-parser` library to define an `--option` that takes a value. The `@Option var name: String` property declares a `--name` option whose value is parsed from the command line. For deterministic output the program parses a fixed argv `["--name", "alice"]` passed directly to `App.main(...)` rather than the real process arguments, so running it always prints `alice`.

## Run

    swift run

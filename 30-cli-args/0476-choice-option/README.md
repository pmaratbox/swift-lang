# 0476 — Choice option

This lesson uses Apple's `swift-argument-parser` library to restrict an option to a fixed set of choices. The `--color` option is typed as an `enum Color` (a `String`-backed enum conforming to `ExpressibleByArgument` and `CaseIterable`), so the parser only accepts `red`, `green`, or `blue` and rejects anything else. For determinism the program parses a hardcoded argv `["--color", "green"]` rather than the real process arguments, so running it always prints the same value.

## Run

    swift run

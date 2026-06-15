# 0469 — Positional argument

Defines a CLI with one positional argument `name` using Apple's `swift-argument-parser` library and its `@Argument` property wrapper on a `ParsableCommand`. To stay deterministic, the program parses a fixed hardcoded argv `["alice"]` (not the real process arguments), so running with no arguments always prints the same value.

## Run

    swift run

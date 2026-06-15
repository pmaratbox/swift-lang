# 0474 — Subcommand

Uses Apple's `swift-argument-parser` library's subcommand feature: the root `App` registers an `add` subcommand (via `CommandConfiguration(subcommands:)`) that takes two integer positional `@Argument`s, sums them, and prints the result. To stay deterministic the program parses a fixed argv `["add", "2", "3"]` passed to `App.main` rather than the real process arguments, so it always prints `5`.

## Run

    swift run

# 0470 — Boolean flag

This lesson uses Apple's `swift-argument-parser` library and its `@Flag` property wrapper to declare a boolean flag `--verbose`. Instead of reading the real process arguments, the program calls `App.main(["--verbose"])` with a fixed, hardcoded argv so the output is deterministic. When the flag is present the parser sets the property to `true`, and Swift prints booleans as lowercase `true`.

## Run

    swift run

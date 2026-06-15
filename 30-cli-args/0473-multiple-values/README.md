# 0473 — Multiple values

Uses Apple's `swift-argument-parser` library and its repeated-option feature: declaring `@Option var num: [Int]` lets `--num` appear multiple times, collecting each value into an array. To stay deterministic the program parses a fixed, hardcoded argv `["--num", "1", "--num", "2", "--num", "3"]` instead of the real process arguments, then sums the collected values and prints the total.

## Run

    swift run

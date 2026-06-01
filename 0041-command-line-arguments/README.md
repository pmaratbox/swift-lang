# 0041 — Command-line Arguments

Read the first command-line argument and greet it, so running with `Ada` prints `hello, Ada`. `CommandLine.arguments` is the argument array with `[0]` as the program path, so `[1]` is the first real argument — the same convention as C's `argv`.

## Run

    swift main.swift Ada

# 0211 — Command (Undo)

Execute an AddCommand that takes a counter from 0 to 5, then undo it back to 0, printing `5 0`. The `Command` protocol pairs `execute()` with a reversing `undo()` over a shared reference-type counter.

## Run

    swift main.swift

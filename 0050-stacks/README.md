# 0050 — Stacks

Push `1`, `2`, and `3` onto a stack, then pop them all off and print them in last-in-first-out order: `3 2 1`. A Swift array is the stack: `append` pushes and `popLast()` removes and returns the last element as an `Optional` (`nil` when empty), so `while let` drains it.

## Run

    swift main.swift

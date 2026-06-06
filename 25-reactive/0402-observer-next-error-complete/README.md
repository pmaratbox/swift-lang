# 0402 — Observer Contract

Demonstrate the observer contract next*-then-terminal: emit 1 and 2, complete, and show that a post-complete next is ignored. A `stopped` flag guarded by `guard !stopped else { return }` makes post-terminal calls idiomatic no-ops.

## Run

    swift main.swift

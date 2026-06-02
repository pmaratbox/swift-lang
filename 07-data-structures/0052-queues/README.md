# 0052 — Queues

Enqueue `1`, `2`, and `3` into a queue, then dequeue them all and print them in first-in-first-out order: `1 2 3`. Swift's stdlib has no deque (it lives in the swift-collections package), so an array stands in, with `removeFirst()` taking the front — O(n), fine for small queues.

## Run

    swift main.swift

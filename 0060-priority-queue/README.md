# 0060 — Priority Queue

Push `3`, `1`, and `2` into a min-priority-queue, then pop them all and print them in priority (ascending) order: `1 2 3`. Swift's stdlib has no heap (it lives in the swift-collections package), so this is an array-backed priority queue — `insert` keeps it sorted and the front is the minimum.

## Run

    swift main.swift

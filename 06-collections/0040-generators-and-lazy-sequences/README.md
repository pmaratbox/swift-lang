# 0040 — Generators & Lazy Sequences

Produce an endless lazy sequence of squares and take only the first three, printing `1 4 9`. `sequence(first:next:)` builds an infinite lazy sequence, `.lazy.map` squares each element on demand, and `prefix(3)` bounds it. Without `.lazy`, `map` would try to run over the whole (infinite) sequence eagerly.

## Run

    swift main.swift

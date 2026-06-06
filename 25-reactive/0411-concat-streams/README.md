# 0411 — Concat Streams

Implement concat: subscribe to the second source only after the first completes; concat [1,2] then [3,4]. The `concat` operator wires the second subscription inside the first's completion closure, so everything stays synchronous.

## Run

    swift main.swift

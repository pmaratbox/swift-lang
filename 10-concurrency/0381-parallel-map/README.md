# 0381 — Parallel Map

Square 1,2,3,4 in parallel and collect the results in input order, printing `1 4 9 16`. `DispatchQueue.concurrentPerform` runs each index concurrently and writes back by position.

## Run

    swift main.swift

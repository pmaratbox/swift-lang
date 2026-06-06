# 0408 — Take Operator

Implement take(n) over an unbounded source of the natural numbers, emitting the first 3 then completing (and unsubscribing the source). The observer carries an `isStopped` closure the source polls after each emission, so the infinite `while` loop halts the moment the count is reached.

## Run

    swift main.swift

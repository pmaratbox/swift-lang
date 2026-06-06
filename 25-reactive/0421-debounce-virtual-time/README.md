# 0421 — Debounce (Virtual Time)

Implement debounce(window) on a virtual-time scheduler: emit a value only after a quiet gap of `window` ticks with no newer value. A class-based `Scheduler` with a `Token` reference type makes cancelling the pending emit idiomatic in Swift.

## Run

    swift main.swift

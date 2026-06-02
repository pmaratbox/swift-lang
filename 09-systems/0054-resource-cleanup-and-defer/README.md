# 0054 — Resource Cleanup & Defer

Acquire a resource, use it, and let the language release it automatically at scope exit, printing `open`, `use`, and `close` in that order. `defer` schedules a block to run when the current scope exits (here a `do` block); multiple defers run in reverse order. It is Swift's cleanup idiom.

## Run

    swift main.swift

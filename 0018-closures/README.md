# 0018 — Closures

Build a counter that captures a private count starting at zero; each call to the
returned function increments the count and returns it, so calling it twice prints
1 then 2. Swift closures capture variables by reference, so the returned closure
can mutate the `var count` declared in `counter` and that storage stays alive
after `counter` returns. The return type `() -> Int` names a function taking no
arguments and yielding an `Int`, and each call to `counter` captures its own
fresh `count`, so independent counters never share state.

## Run

    swift main.swift

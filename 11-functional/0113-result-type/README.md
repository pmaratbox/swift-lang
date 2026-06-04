# 0113 — Result / Either Type

Model success and failure with a Result type: safeDiv(10,2) prints `ok: 5` and safeDiv(1,0) prints `err: divide by zero`. Swift's built-in `Result<Int, DivError>` (whose failure type conforms to `Error`) returns `.success`/`.failure` and is pattern-matched with a `switch`.

## Run

    swift main.swift

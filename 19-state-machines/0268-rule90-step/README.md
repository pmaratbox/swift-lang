# 0268 — Cellular Automaton Rule 90

Apply one Rule 90 step (new = left XOR right) to the row "00100" with zero boundaries, printing `01010`. Swift's `^` operator computes each cell from its neighbors with zeros outside the row.

## Run

    swift main.swift

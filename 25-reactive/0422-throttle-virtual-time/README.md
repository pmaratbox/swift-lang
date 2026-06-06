# 0422 — Throttle (Virtual Time)

Implement throttle(window) (leading edge) on a virtual-time scheduler: emit a value, then suppress further values for `window` ticks. Swift reference-type classes let the scheduler closures share a mutable virtual clock and block-until state without value-copy surprises.

## Run

    swift main.swift

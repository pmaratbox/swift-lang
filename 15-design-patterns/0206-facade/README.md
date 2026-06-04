# 0206 — Facade

Expose a single facade call that starts three subsystems and reports `ready`. The `Facade` struct owns the subsystems and sequences their `initialize()` calls behind one `start()`.

## Run

    swift main.swift

# 0104 — Atomic Counter

Increment a shared atomic counter from multiple threads 1000 times total without a lock, printing `1000`. Swift 6's `Synchronization.Atomic` provides a lock-free `wrappingAdd` for the 10 workers.

## Run

    swift main.swift

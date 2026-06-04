# 0380 — Compare-And-Swap Loop

Increment a shared value to 100 using a CAS retry loop from multiple threads, printing `100`. Swift's `Synchronization.Atomic` provides `compareExchange` for the lock-free retry loop.

## Run

    swift main.swift

# 0382 — Fork-Join Sum

Recursively fork the sum of [1..8] into halves and join the partial sums, printing `36`. Each half is dispatched to a global queue and a `DispatchGroup` joins both partial sums.

## Run

    swift main.swift

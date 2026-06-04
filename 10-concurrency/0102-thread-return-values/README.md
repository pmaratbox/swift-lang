# 0102 — Threads Returning Values

Run two threads that compute the squares of 3 and 4, join them, and print the sum of their results `25`. Swift dispatches both squares on a `DispatchQueue` tracked by a `DispatchGroup`, then sums after `group.wait()`.

## Run

    swift main.swift

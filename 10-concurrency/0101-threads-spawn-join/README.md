# 0101 — Threads: Spawn and Join

Spawn 3 worker threads, wait for all of them to finish, then print `done: 3`. Swift uses `Thread.detachNewThread` with a `DispatchGroup` to join all workers.

## Run

    swift main.swift

# 0103 — Mutex-Protected Counter

Have multiple threads each increment a shared counter under a mutex so the total is exactly `1000`. Swift guards each increment with an `NSLock` while 10 dispatched workers add 100 apiece.

## Run

    swift main.swift

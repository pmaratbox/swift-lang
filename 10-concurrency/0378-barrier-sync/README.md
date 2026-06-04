# 0378 — Barrier Synchronization

Have 3 threads each arrive at a barrier before any proceeds, then print `all reached: 3`. Swift uses an `NSCondition` with `broadcast` to release all waiting threads at once.

## Run

    swift main.swift

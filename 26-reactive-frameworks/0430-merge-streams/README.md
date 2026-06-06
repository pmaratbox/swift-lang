# 0430 — Merge Streams

Use the library's merge operator on a virtual/test scheduler to interleave two timed streams by emission time. Uses Apple Combine's `merge(with:)` operator with a custom virtual-time `Scheduler` driving two `PassthroughSubject` sources.

## Run

    swift main.swift

# 0410 — Merge Streams

Implement merge of two timed streams using a virtual-time scheduler, interleaving them by emission time. A small `final class` priority queue scans for the smallest `(time, seq)` and drives all emissions synchronously.

## Run

    swift main.swift

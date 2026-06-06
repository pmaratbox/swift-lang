# 0404 — Cold vs Hot Observable

Contrast a cold observable (re-runs its producer per subscriber) with a hot one (shares a single execution, so late subscribers miss earlier values). In Swift the cold producer is a closure re-invoked on each `subscribe`, while the hot one is a class that fans a single `emit` out to its current observer list.

## Run

    swift main.swift

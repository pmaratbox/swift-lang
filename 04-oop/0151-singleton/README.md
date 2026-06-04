# 0151 — Singleton

Obtain a singleton instance twice and confirm both references are the same object, printing `same: yes`. A `static let` on a `final class` is lazily initialized exactly once, and `===` compares the two references for identity.

## Run

    swift main.swift

# 0409 — Distinct Until Changed

Implement distinctUntilChanged, dropping consecutive duplicate values from 1,1,2,2,2,3,1. A constrained extension on `Observable where T: Equatable` keeps an optional `last` value and forwards only when it differs.

## Run

    swift main.swift

# 0110 — Currying

Curry a two-argument add into a chain of one-argument functions and call it as `add(2)(3)`, printing `5`. Swift functions are first-class, so `add` returns a closure `{ b in a + b }` capturing the first argument.

## Run

    swift main.swift

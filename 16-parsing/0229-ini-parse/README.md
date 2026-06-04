# 0229 — Parse INI

Parse the INI text with section [s] and key k=v, printing the flattened entry `s.k=v`. `firstIndex(of:)` plus substring slicing splits the key from the value without allocation.

## Run

    swift main.swift

# 0096 — Mutual Recursion

Using two mutually recursive functions `isEven` and `isOdd` (each calling the other), report whether `4` and `3` are even, printing `even` and `odd`. Global functions in a file see each other regardless of order, so `isEven` and `isOdd` call back and forth freely.

## Run

    swift main.swift

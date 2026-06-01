# 0030 — Variadic Functions

Define a function that accepts a variable number of integer arguments and returns their total, then call it with `1, 2, 3` to print `sum: 6`. A variadic parameter `nums: Int...` is received inside the function as a regular `[Int]` array, reduced with `reduce(0, +)`. Since Swift 5.4 a function may even have multiple variadic parameters, as long as the ones after the first are labelled.

## Run

    swift main.swift

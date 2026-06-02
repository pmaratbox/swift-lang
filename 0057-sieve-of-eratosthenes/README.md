# 0057 — Sieve of Eratosthenes

Use the Sieve of Eratosthenes to find every prime number up to `10` and print them: `2 3 5 7`. `[Bool](repeating: true, count: n + 1)` seeds the flags; multiples are struck from `i*i`, and `(2...n).filter` collects the primes.

## Run

    swift main.swift

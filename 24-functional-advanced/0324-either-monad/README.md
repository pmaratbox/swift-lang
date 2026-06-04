# 0324 — Either Monad

Chain Either computations: a successful divide chain yields 2, and a divide-by-zero yields an error, printing `2 err`. A two-case enum with `bind` propagates `.left` and threads `.right`.

## Run

    swift main.swift

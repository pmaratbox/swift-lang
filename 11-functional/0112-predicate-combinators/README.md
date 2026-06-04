# 0112 — Predicate Combinators

Combine predicates with AND/OR/NOT: test `isEven AND isPositive` on 4 (yes) and -4 (no), printing `yes no`. Swift takes two `@escaping` predicate closures and returns their conjunction `{ x in p(x) && q(x) }`.

## Run

    swift main.swift

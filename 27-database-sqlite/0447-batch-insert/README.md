# 0447 — Batch insert

Inserts 1000 rows (values 1..1000) into an in-memory SQLite table using a single prepared `insert` statement bound and stepped repeatedly inside one transaction (`begin`/`commit`), then runs `select count(*)` and prints the row count. Uses the SQLite3 C API (`import SQLite3`) directly.

## Run

    swift main.swift

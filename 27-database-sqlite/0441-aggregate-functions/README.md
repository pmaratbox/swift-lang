# 0441 — Aggregate functions

Creates an in-memory SQLite database, inserts the amounts 10, 20, 30, 40, 50, then runs `select count(*),sum(amount),min(amount),max(amount) from t` to compute the row count, total, minimum, and maximum. It prints the four values, each on its own line, in that order. Uses Swift's built-in `SQLite3` C API (`sqlite3_prepare_v2`, `sqlite3_bind_int`, `sqlite3_step`, `sqlite3_column_int`).

## Run

    swift main.swift

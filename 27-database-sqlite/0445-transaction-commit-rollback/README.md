# 0445 — Transactions

Creates an in-memory SQLite database and a table `t(n)`, then exercises real transaction control via the SQLite3 C API (`begin`/`commit`/`rollback` through `sqlite3_exec`). One transaction inserts 1 and 2 and commits them; a second transaction inserts 3 and rolls back, so 3 never persists. A final `select n from t order by n` confirms only 1 and 2 remain.

## Run

    swift main.swift

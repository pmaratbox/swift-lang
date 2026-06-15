# 0448 — Upsert

Creates an in-memory SQLite database with an `inv(item text primary key, qty integer)` table and inserts `('apple', 5)`. It then performs upserts with `insert ... on conflict(item) do update set qty=qty+excluded.qty`: re-inserting apple bumps its quantity to 10, while banana is inserted fresh. Finally it runs `select item, qty from inv order by item` and prints each row as `item qty`. Uses Swift's built-in `SQLite3` C API (`sqlite3_prepare_v2`, `sqlite3_bind_*`, `sqlite3_step`, `sqlite3_exec`).

## Run

    swift main.swift

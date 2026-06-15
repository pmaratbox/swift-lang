# 0440 — Update & delete

Creates an in-memory SQLite database, inserts three users, then runs an `UPDATE` to rename id 2 to `robert` and a `DELETE` to remove id 1. It re-reads the table with `select id,name from users order by id` and prints each remaining row as `id name`. Uses Swift's built-in `SQLite3` C API (`sqlite3_prepare_v2`, `sqlite3_bind_*`, `sqlite3_step`, `sqlite3_exec`).

## Run

    swift main.swift

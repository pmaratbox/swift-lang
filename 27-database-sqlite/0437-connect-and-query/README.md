# 0437 — Connect & query

Open an in-memory SQLite database and run a single query. This lesson imports the system `SQLite3` C API directly, opens a `:memory:` connection, prepares the statement `select 42`, steps through the result with `sqlite3_step`, and prints the single integer column via `sqlite3_column_int`.

## Run

    swift main.swift

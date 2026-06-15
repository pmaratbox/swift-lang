# 0439 — Parameterized query

Insert three users into an in-memory SQLite database, then run `select name from users where id=?` with the value `2` supplied through a real bound parameter (never string interpolation), and print the matching name. Uses the system SQLite3 C API via `import SQLite3`, with `sqlite3_prepare_v2`, `sqlite3_bind_int`, and `sqlite3_step` for safe parameter binding.

## Run

    swift main.swift

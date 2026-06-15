# 0438 — Create table & insert

Creates a `users(id integer, name text)` table in an in-memory SQLite database, inserts three rows via a prepared statement with bound parameters, then runs `select name from users order by id` and prints each name on its own line. Uses the system SQLite3 C API (`import SQLite3`) directly.

## Run

    swift main.swift

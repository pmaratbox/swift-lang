# 0443 — Order by & limit

Creates an in-memory SQLite database via the C `SQLite3` API, inserts six scores into a `scores` table using a prepared statement, then runs `select value from scores order by value desc limit 3` to sort descending and take the top three rows, printing each value on its own line.

## Run

    swift main.swift

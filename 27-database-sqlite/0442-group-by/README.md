# 0442 — Group by

Aggregate amounts per group. Creates an in-memory `sales(category, amount)` table, inserts five rows, then runs `select category,sum(amount) from sales group by category order by category` to sum amounts per category. Uses Swift's `import SQLite3` (the C SQLite API) with prepared statements, `sqlite3_bind_*` parameter binding, and `sqlite3_step` row iteration, printing each row as `category sum` (space-separated).

## Run

    swift main.swift

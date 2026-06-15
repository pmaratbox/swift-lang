# 0446 — Indexes

Creates an in-memory SQLite database with a `products` table, inserts three rows, then executes `create index idx_sku on products(sku)` to build a real index. It runs a prepared `select price from products where sku=?` lookup bound to 'B' and prints the matching price. Uses the system SQLite3 C API via `import SQLite3`.

## Run

    swift main.swift

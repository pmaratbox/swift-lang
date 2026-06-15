# 0444 — Inner join

Creates an in-memory SQLite database via the C `SQLite3` API, builds `users` and `orders` tables, and inserts rows with prepared statements and bound parameters. It then runs an inner join (`select u.name,o.item from orders o join users u on u.id=o.user_id order by u.name,o.item`) and prints each result row as `name item`.

## Run

    swift main.swift

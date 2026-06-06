# 0416 — Subject Multicast

Implement a Subject that multicasts each emission to all current observers; two observers both receive 1 then 2. Swift models each observer as an `@escaping` closure stored in an array that `next(_:)` iterates in registration order.

## Run

    swift main.swift

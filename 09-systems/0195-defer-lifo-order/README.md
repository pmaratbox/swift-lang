# 0195 — Defer LIFO Order

Register three deferred actions printing 1, 2, 3 and show they run in last-in-first-out order `3 2 1`. Swift runs `defer` blocks in reverse registration order as a scope unwinds.

## Run

    swift main.swift

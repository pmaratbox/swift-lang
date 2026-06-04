# 0373 — Exception Hierarchy

Throw a specific error subtype and catch it through a base-type handler, printing `caught base`. Swift models the hierarchy with an `Error` protocol whose conforming struct is matched by a `catch is` pattern.

## Run

    swift main.swift

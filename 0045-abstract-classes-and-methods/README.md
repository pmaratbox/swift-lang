# 0045 — Abstract Classes & Methods

Define an abstract `Shape` with an abstract `area` and a concrete `describe` that uses it, then implement a `Square` of side 3 and print `area: 9`. Swift classes cannot be abstract, so the idiom is a *protocol* (the required `area`) plus a *protocol extension* providing a default `describe`. `Square` conforms by implementing `area`.

## Run

    swift main.swift

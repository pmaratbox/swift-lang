# 0199 — Struct Field Names

List the field names of a Point{x,y} struct/record and print `x y`. Swift introspects stored properties at runtime via `Mirror`, reading each child's `label`.

## Run

    swift main.swift

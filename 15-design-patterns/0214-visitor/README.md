# 0214 — Visitor

Use a visitor to sum the values of a small node tree with leaves 1, 2, 3, printing `6`. Each `Node` calls back into the visitor via `accept`, giving the double-dispatch Swift lacks natively.

## Run

    swift main.swift

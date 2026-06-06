# 0424 — Signal + Computed

Implement fine-grained reactivity: a writable signal and a derived computed that recomputes when its dependency changes. A generic `Signal` class holds subscriber closures, and `Computed` registers a `[weak self]` recompute callback to avoid a reference cycle.

## Run

    swift main.swift

# 0109 — Run-Once Initialization

Ensure an initializer runs exactly once even when several threads race to trigger it, printing `init count: 1`. Swift relies on the runtime's guarantee that a lazily-initialized global runs its initializer exactly once across threads.

## Run

    swift main.swift

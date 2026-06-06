# 0415 — SwitchMap

Implement switchMap: when a new outer value arrives, cancel the previous inner subscription before starting the new one. In Swift, `subscribe` returns the scheduler tokens so switchMap can cancel the prior inner's pending emissions.

## Run

    swift main.swift

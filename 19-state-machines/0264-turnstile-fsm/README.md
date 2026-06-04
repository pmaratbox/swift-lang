# 0264 — Turnstile FSM

Drive a turnstile (locked/unlocked) with events coin, push, push and print the resulting states `unlocked locked locked`. A Swift tuple switch encodes the (state, event) transition table.

## Run

    swift main.swift

# 0216 — Mediator

Have colleague A send "hi" through a mediator to colleague B, which prints `B got: hi`. Colleagues hold only a `Mediator` reference, which routes the message to the right peer.

## Run

    swift main.swift

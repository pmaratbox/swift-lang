# 0423 — EventEmitter (Pub/Sub)

Build a multi-topic EventEmitter with on(topic, handler), emit(topic, payload), and off(topic, handler). Swift backs topics with a `[String: [Handler]]` dictionary, returning a token so `off` can remove the exact registration via `removeAll`.

## Run

    swift main.swift

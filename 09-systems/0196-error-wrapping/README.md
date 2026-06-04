# 0196 — Error Wrapping

Wrap an inner error "inner" inside an outer context and print the combined message `outer: inner`. Swift wraps by holding the cause as a stored property and composing the message in `CustomStringConvertible`.

## Run

    swift main.swift

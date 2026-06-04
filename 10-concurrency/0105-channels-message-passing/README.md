# 0105 — Channels / Message Passing

Send the values 1, 2, 3 through a channel (or queue) from one thread and receive them in order, printing `1 2 3`. Swift models a channel with an `NSCondition`-guarded queue whose `receive` blocks until an item arrives or it closes.

## Run

    swift main.swift

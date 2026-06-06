# 0403 — Subscribe and Unsubscribe

Return a Subscription from subscribe() and use it to unsubscribe so later values are not delivered. In Swift a reference-type `Subscription` class holds a `closed` flag the producer checks before each emission.

## Run

    swift main.swift

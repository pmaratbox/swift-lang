# 0420 — Retry On Error

Implement retry(n) that resubscribes to the source on error up to n times; the source succeeds on the 3rd subscription. Swift models the operator as a struct wrapping a `subscribe` closure that re-invokes itself on the error callback.

## Run

    swift main.swift

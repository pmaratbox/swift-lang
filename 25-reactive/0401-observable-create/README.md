# 0401 — Create an Observable

Build a push-based Observable from scratch that emits 1, 2, 3 to its observer and then completes. In Swift the observer is modeled as a struct of `next`/`complete` closures, and `subscribe` simply runs the producer handler against it.

## Run

    swift main.swift

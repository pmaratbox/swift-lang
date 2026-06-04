# 0106 — Producer / Consumer

A producer sends 1..5 to a consumer that sums them, printing `15`. Swift connects the two threads with an `NSCondition`-backed bounded blocking queue.

## Run

    swift main.swift

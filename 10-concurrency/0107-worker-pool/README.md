# 0107 — Worker Pool

Distribute squaring of 1..4 across a pool of workers, collect the results, and print them sorted ascending `1 4 9 16`. Swift fans the work out onto `DispatchQueue.global()` and sorts the lock-guarded results before printing.

## Run

    swift main.swift

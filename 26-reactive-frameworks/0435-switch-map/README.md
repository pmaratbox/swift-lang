# 0435 — SwitchMap

Use the library's switchMap on a virtual/test scheduler so a new outer value cancels the previous inner stream. Apple Combine's `map { ... }.switchToLatest()` over a custom virtual-time `Scheduler` switches to the latest inner publisher and cancels the prior one.

## Run

    swift main.swift

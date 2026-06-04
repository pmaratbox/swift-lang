# 0220 — Null Object

Compare a no-op null logger with a real logger; only the real one records, so print the logged count `1`. Both conform to a `Logger` protocol, but `NullLogger.log` does nothing while `RealLogger` increments a count.

## Run

    swift main.swift

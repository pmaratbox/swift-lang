# 0323 — Maybe Monad

Chain Maybe operations: Some(2) then +3 then *2 gives 10, and a None chain yields the fallback, printing `10 none`. An enum with a `bind` method models the Maybe monad's short-circuiting.

## Run

    swift main.swift

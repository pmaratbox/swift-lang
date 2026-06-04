# 0200 — Precondition Assert

Check a precondition arg>0: for 5 print `ok`, and for -1 report the failure `error: must be positive`, on two lines. A `guard` enforces the precondition and throws a recoverable error so the failure can be reported rather than trapping.

## Run

    swift main.swift

# 0042 — Environment Variables

Read the environment variable `LESSON_ENV_VAR`, falling back to `default` when it is unset, and print `value: default`. Foundation's `ProcessInfo.processInfo.environment` is a `[String: String]` dictionary; subscripting returns an optional, and `??` supplies the default when the key is absent.

## Run

    swift main.swift

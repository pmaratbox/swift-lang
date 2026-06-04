# 0144 — Flag Enum (Bit Flags)

Combine bit flags READ(1) and WRITE(2) into 3, check that WRITE is set, and print `3 yes`. Swift models bit flags with `OptionSet`, where set algebra (`contains`) reads cleaner than raw bit twiddling.

## Run

    swift main.swift

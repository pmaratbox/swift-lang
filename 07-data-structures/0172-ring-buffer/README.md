# 0172 — Ring Buffer

Push 1,2,3,4,5 into a fixed capacity-3 ring buffer (overwriting oldest) and print the final contents `3 4 5`. Modular arithmetic on a fixed backing array keeps the buffer circular without reallocation.

## Run

    swift main.swift

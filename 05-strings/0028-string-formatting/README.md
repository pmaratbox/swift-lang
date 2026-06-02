# 0028 — String Formatting

Format the float `3.14159` to two decimals and zero-pad the integer `42` to width five, printing `pi: 3.14` and `id: 00042`. Foundation's `String(format:)` follows C `printf` conventions: `%.2f` fixes two decimals and `%05d` zero-pads to width 5. It formats with the C locale, so the decimal mark is a dot regardless of the user's settings.

## Run

    swift main.swift

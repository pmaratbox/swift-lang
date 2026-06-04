# 0116 — Function Pipeline

Compose inc, double, and negate into a left-to-right pipeline and apply it to 3: ((3+1)*2) negated = `-8`. Swift threads the value through a variadic list of closures with `reduce`, applying each in turn.

## Run

    swift main.swift

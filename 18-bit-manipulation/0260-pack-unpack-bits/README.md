# 0260 — Pack and Unpack Bits

Pack r=1,g=2,b=3 into one integer (8 bits each) then unpack them, printing `1 2 3`. Swift's shift and `& 0xff` mask round-trip the channels cleanly.

## Run

    swift main.swift

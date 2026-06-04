# 0366 — Sparse Matrix

Store only nonzero entries; with (1,1)=5 set, read (1,1) (5) and (0,0) (0), printing `5 0`. Swift keys a Dictionary by a Hashable Coord struct so a missing entry reads as 0.

## Run

    swift main.swift

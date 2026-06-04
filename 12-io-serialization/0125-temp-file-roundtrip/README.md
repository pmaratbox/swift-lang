# 0125 — Temp File Roundtrip

Write a string to a temporary file, read it back, confirm it matches, delete the file, and print `roundtrip: ok`. `FileManager.temporaryDirectory` gives a per-process scratch location for the roundtrip.

## Run

    swift main.swift

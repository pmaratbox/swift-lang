# 0027 — File I/O

Write `hello, file` to a file, read it back, delete the file, and print `read: hello, file`. Foundation's `String.write(toFile:atomically:encoding:)` writes the text (atomically, via a temp file) and `String(contentsOfFile:encoding:)` reads it back; `FileManager.removeItem` deletes it. Each call is marked `try` because it can throw.

## Run

    swift main.swift

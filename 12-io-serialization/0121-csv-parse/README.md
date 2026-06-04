# 0121 — Parse CSV

Parse the two CSV rows `alice,30` and `bob,25` into name=value pairs and print `alice=30 bob=25`. Swift's `split(separator:)` slices each row without allocating substrings eagerly.

## Run

    swift main.swift

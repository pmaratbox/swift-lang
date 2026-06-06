# 0434 — FlatMap (mergeMap)

Use the library's flatMap/mergeMap on a virtual/test scheduler, mapping each outer value to a timed inner stream and merging them. Apple Combine's `flatMap` merges each inner publisher, with inner emissions timed via the custom `VScheduler`.

## Run

    swift main.swift

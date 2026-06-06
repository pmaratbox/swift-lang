# 0414 — FlatMap (mergeMap)

Implement flatMap/mergeMap: map each outer value to an inner timed stream and merge all inners concurrently (no cancellation). In Swift, generic `Observable<T>` structs wrap a `subscribe` closure and each inner subscription just forwards `next` to the shared observer.

## Run

    swift main.swift

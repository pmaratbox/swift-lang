# 0175 — Graph BFS

Breadth-first traverse from node 0 of the graph 0:[1,2] 1:[0,3] 2:[0,3] 3:[1,2], printing visit order `0 1 2 3`. A FIFO array queue plus a `Set` of visited ids enqueues neighbors in list order.

## Run

    swift main.swift

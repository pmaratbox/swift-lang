# 0179 — Union-Find

Union (0,1) and (2,3), then query connectivity of (0,1)=yes and (0,2)=no, printing `yes no`. A disjoint-set with a `parent` array and recursive `find` (with path compression) answers connectivity by comparing roots.

## Run

    swift main.swift

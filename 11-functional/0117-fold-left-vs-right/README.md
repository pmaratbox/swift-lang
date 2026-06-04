# 0117 — Fold Left vs Right

Fold subtraction over [1,2,3] from 0 both ways: left ((((0-1)-2)-3)) = -6 and right (1-(2-(3-0))) = 2, printing `-6 2`. Swift's `reduce` is a left fold, and a right fold is expressed by reversing the array and flipping the operands.

## Run

    swift main.swift

# 0228 — Parse Quoted CSV

Parse the CSV row `a,"b,c",d`, respecting the quoted comma, into three fields joined by pipes `a|b,c|d`. A `case ... where` pattern keeps the in-quotes guard inline.

## Run

    swift main.swift

# 0208 — Virtual Proxy

Use a lazy virtual proxy that loads the real subject only on first access, printing `loaded`. A reference-type proxy holds an optional real subject and instantiates it on the first `request()`.

## Run

    swift main.swift

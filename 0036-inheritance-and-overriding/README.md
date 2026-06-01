# 0036 — Inheritance & Overriding

Define a base `Animal` with a `speak` method, a `Dog` that overrides it, and call both, printing `animal: some sound` and `dog: Woof`. `class Dog: Animal` inherits, and the `override` keyword (required by the compiler) replaces `speak`; methods on classes are dynamically dispatched. `super.speak()` calls the parent, and `final` prevents overriding.

## Run

    swift main.swift

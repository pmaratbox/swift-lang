# 0023 — Modules & Imports

Define `square(n)` in a separate `mathutil` module and import it from the main program, printing `square(8) = 64` across the module boundary. Files compiled together form one *module* and share scope, so `main.swift` calls `square` from `mathutil.swift` with no `import` (that keyword is for separate modules like `Foundation`). Because there are two files, they are built with `swiftc` rather than the single-file `swift` interpreter.

## Run

    swiftc main.swift mathutil.swift -o modules && ./modules

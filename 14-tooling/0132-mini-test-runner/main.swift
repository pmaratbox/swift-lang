typealias Test = (name: String, run: () -> Bool)

let tests: [Test] = [
    ("addition", { 1 + 1 == 2 }),
    ("concat", { "a" + "b" == "ab" }),
    ("count", { [1, 2, 3].count == 3 }),
]

var passed = 0
var failed = 0
for test in tests {
    if test.run() {
        passed += 1
    } else {
        failed += 1
    }
}

print("\(passed) passed, \(failed) failed")

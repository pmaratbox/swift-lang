func divisibleBy3(_ bits: String) -> Bool {
    var state = 0
    for ch in bits {
        let b = Int(String(ch))!
        state = (state * 2 + b) % 3
    }
    return state == 0
}

let results = ["110", "100"].map { divisibleBy3($0) ? "yes" : "no" }
print(results.joined(separator: " "))

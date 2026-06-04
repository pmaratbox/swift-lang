let bits = 0b101
let chars: [(Int, Character)] = [(2, "r"), (1, "w"), (0, "x")]

let result = chars.map { (bit, ch) in
    (bits >> bit) & 1 == 1 ? ch : "-"
}

print(String(result))

let csv = "alice,30\nbob,25"

let pairs = csv.split(separator: "\n").map { line -> String in
    let fields = line.split(separator: ",")
    return "\(fields[0])=\(fields[1])"
}

print(pairs.joined(separator: " "))

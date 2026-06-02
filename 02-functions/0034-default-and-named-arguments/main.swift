func greet(_ name: String, greeting: String = "Hello") -> String {
    return "\(greeting), \(name)"
}

print(greet("Ada"))
print(greet("Ada", greeting: "Hi"))

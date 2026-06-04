func label(_ enabled: Bool) -> String {
    enabled ? "enabled" : "disabled"
}

print("\(label(true)) \(label(false))")

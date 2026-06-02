let text = "hello"
if let range = text.firstRange(of: "lo") {
    print(text.distance(from: text.startIndex, to: range.lowerBound))
}

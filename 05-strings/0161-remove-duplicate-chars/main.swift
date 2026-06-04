let text = "aabbcc"
var seen: Set<Character> = []
var result = ""
for char in text where seen.insert(char).inserted {
    result.append(char)
}
print(result)

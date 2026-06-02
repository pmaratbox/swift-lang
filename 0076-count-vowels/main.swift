let word = "hello"
let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
let count = word.filter { vowels.contains($0) }.count
print(count)

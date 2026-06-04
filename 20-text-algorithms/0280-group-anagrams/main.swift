func groupAnagrams(_ words: [String]) -> Int {
    var groups = [String: [String]]()
    for word in words {
        let key = String(word.sorted())
        groups[key, default: []].append(word)
    }
    return groups.count
}

print(groupAnagrams(["eat", "tea", "tan", "ate", "nat"]))

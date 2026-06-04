final class TrieNode {
    var children = [Character: TrieNode]()
    var isWord = false
}

final class Trie {
    private let root = TrieNode()

    func insert(_ word: String) {
        var node = root
        for c in word {
            if node.children[c] == nil { node.children[c] = TrieNode() }
            node = node.children[c]!
        }
        node.isWord = true
    }

    func autocomplete(_ prefix: String) -> [String] {
        var node = root
        for c in prefix {
            guard let next = node.children[c] else { return [] }
            node = next
        }
        var results = [String]()
        collect(node, prefix, &results)
        return results
    }

    private func collect(_ node: TrieNode, _ current: String, _ out: inout [String]) {
        if node.isWord { out.append(current) }
        for c in node.children.keys.sorted() {
            collect(node.children[c]!, current + String(c), &out)
        }
    }
}

let trie = Trie()
for word in ["car", "card", "dog"] { trie.insert(word) }
print(trie.autocomplete("car").joined(separator: " "))

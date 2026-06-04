final class TrieNode {
    var children: [Character: TrieNode] = [:]
    var isEnd = false
}

final class Trie {
    private let root = TrieNode()

    func insert(_ word: String) {
        var node = root
        for ch in word {
            if node.children[ch] == nil {
                node.children[ch] = TrieNode()
            }
            node = node.children[ch]!
        }
        node.isEnd = true
    }

    func search(_ word: String) -> Bool {
        var node = root
        for ch in word {
            guard let next = node.children[ch] else { return false }
            node = next
        }
        return node.isEnd
    }
}

let trie = Trie()
trie.insert("cat")
trie.insert("car")
let a = trie.search("car") ? "yes" : "no"
let b = trie.search("can") ? "yes" : "no"
print("\(a) \(b)")

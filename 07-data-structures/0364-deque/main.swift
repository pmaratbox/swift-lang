struct Deque {
    private var items: [Int] = []

    mutating func pushBack(_ value: Int) { items.append(value) }
    mutating func pushFront(_ value: Int) { items.insert(value, at: 0) }

    var contents: [Int] { items }
}

var deque = Deque()
deque.pushBack(1)
deque.pushBack(2)
deque.pushFront(0)
print(deque.contents.map(String.init).joined(separator: " "))

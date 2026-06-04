struct Person: Comparable {
    let name: String
    let age: Int

    static func < (lhs: Person, rhs: Person) -> Bool {
        lhs.age < rhs.age
    }
}

let people = [Person(name: "alice", age: 30), Person(name: "bob", age: 25)]
let names = people.sorted().map(\.name)
print(names.joined(separator: " "))

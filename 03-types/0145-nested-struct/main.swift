struct Address {
    let city: String
}

struct Person {
    let name: String
    let address: Address
}

let person = Person(name: "Ada", address: Address(city: "London"))

print(person.address.city)

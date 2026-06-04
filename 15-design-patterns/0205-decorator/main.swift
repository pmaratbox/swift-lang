protocol Coffee {
    func cost() -> Int
}

struct BaseCoffee: Coffee {
    func cost() -> Int { 2 }
}

struct Milk: Coffee {
    let base: Coffee
    func cost() -> Int { base.cost() + 1 }
}

struct Sugar: Coffee {
    let base: Coffee
    func cost() -> Int { base.cost() + 1 }
}

let coffee: Coffee = Sugar(base: Milk(base: BaseCoffee()))
print(coffee.cost())

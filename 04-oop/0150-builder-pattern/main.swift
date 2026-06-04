struct Pizza: CustomStringConvertible {
    let size: String
    let toppings: [String]

    var description: String {
        "Pizza(\(size), \(toppings.joined(separator: ", ")))"
    }
}

final class PizzaBuilder {
    private var size = ""
    private var toppings: [String] = []

    func setSize(_ size: String) -> PizzaBuilder {
        self.size = size
        return self
    }

    func addTopping(_ topping: String) -> PizzaBuilder {
        toppings.append(topping)
        return self
    }

    func build() -> Pizza {
        Pizza(size: size, toppings: toppings)
    }
}

let pizza = PizzaBuilder()
    .setSize("M")
    .addTopping("cheese")
    .build()
print(pizza)

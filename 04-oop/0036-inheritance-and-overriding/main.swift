class Animal {
    func speak() -> String {
        return "some sound"
    }
}

class Dog: Animal {
    override func speak() -> String {
        return "Woof"
    }
}

print("animal: \(Animal().speak())")
print("dog: \(Dog().speak())")

protocol Button { var label: String { get } }
protocol Checkbox { var label: String { get } }

protocol ThemeFactory {
    func makeButton() -> Button
    func makeCheckbox() -> Checkbox
}

struct DarkButton: Button { let label = "dark-button" }
struct DarkCheckbox: Checkbox { let label = "dark-checkbox" }

struct DarkFactory: ThemeFactory {
    func makeButton() -> Button { DarkButton() }
    func makeCheckbox() -> Checkbox { DarkCheckbox() }
}

let factory: ThemeFactory = DarkFactory()
print("\(factory.makeButton().label) \(factory.makeCheckbox().label)")

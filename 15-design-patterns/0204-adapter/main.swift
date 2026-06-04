struct CelsiusSource {
    let celsius: Double
}

protocol FahrenheitProvider {
    func fahrenheit() -> Double
}

struct CelsiusToFahrenheit: FahrenheitProvider {
    let source: CelsiusSource
    func fahrenheit() -> Double { source.celsius * 9 / 5 + 32 }
}

let adapter: FahrenheitProvider = CelsiusToFahrenheit(source: CelsiusSource(celsius: 100))
print(Int(adapter.fahrenheit()))

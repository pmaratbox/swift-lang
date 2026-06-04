final class Glyph {
    let char: Character
    init(_ char: Character) { self.char = char }
}

final class GlyphFactory {
    private var cache: [Character: Glyph] = [:]
    private(set) var created = 0

    func glyph(for char: Character) -> Glyph {
        if let existing = cache[char] { return existing }
        let glyph = Glyph(char)
        cache[char] = glyph
        created += 1
        return glyph
    }
}

let factory = GlyphFactory()
for char in ["a", "b", "a"] {
    _ = factory.glyph(for: Character(char))
}
print(factory.created)

enum Direction: Int, CaseIterable {
    case n, e, s, w
}

let ordinalOfS = Direction.s.rawValue
let nameAtThree = "\(Direction.allCases[3])".uppercased()

print("\(ordinalOfS) \(nameAtThree)")

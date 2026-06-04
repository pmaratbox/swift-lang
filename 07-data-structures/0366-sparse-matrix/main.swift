struct SparseMatrix {
    private var entries: [Coord: Int] = [:]

    struct Coord: Hashable {
        let row: Int
        let col: Int
    }

    mutating func set(_ row: Int, _ col: Int, _ value: Int) {
        let key = Coord(row: row, col: col)
        if value == 0 {
            entries[key] = nil
        } else {
            entries[key] = value
        }
    }

    func get(_ row: Int, _ col: Int) -> Int {
        entries[Coord(row: row, col: col), default: 0]
    }
}

var matrix = SparseMatrix()
matrix.set(1, 1, 5)
print("\(matrix.get(1, 1)) \(matrix.get(0, 0))")

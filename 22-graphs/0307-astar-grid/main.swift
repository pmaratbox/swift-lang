struct Cell: Hashable { let r: Int; let c: Int }

let size = 3
let start = Cell(r: 0, c: 0)
let goal = Cell(r: 2, c: 2)

func heuristic(_ a: Cell, _ b: Cell) -> Int {
    abs(a.r - b.r) + abs(a.c - b.c)
}

let dirs = [(1, 0), (-1, 0), (0, 1), (0, -1)]

var gScore: [Cell: Int] = [start: 0]
// open list of (f, cell)
var open: [(f: Int, cell: Cell)] = [(heuristic(start, goal), start)]

func astar() -> Int {
    while !open.isEmpty {
        open.sort { $0.f < $1.f }
        let (_, current) = open.removeFirst()
        if current == goal { return gScore[current]! }
        let g = gScore[current]!
        for (dr, dc) in dirs {
            let nr = current.r + dr, nc = current.c + dc
            guard nr >= 0, nr < size, nc >= 0, nc < size else { continue }
            let next = Cell(r: nr, c: nc)
            let tentative = g + 1
            if tentative < (gScore[next] ?? Int.max) {
                gScore[next] = tentative
                open.append((tentative + heuristic(next, goal), next))
            }
        }
    }
    return -1
}

print(astar())

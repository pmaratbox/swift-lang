func task(_ x: Int) async -> Int {
    return x
}

async let a = task(1)
async let b = task(2)
let sum = await a + b
print("sum: \(sum)")

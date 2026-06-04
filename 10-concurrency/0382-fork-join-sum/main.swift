import Foundation

func forkJoinSum(_ values: ArraySlice<Int>) -> Int {
    if values.count <= 1 {
        return values.first ?? 0
    }
    let mid = values.startIndex + values.count / 2
    let left = values[values.startIndex..<mid]
    let right = values[mid..<values.endIndex]

    var leftSum = 0
    var rightSum = 0
    let group = DispatchGroup()

    group.enter()
    DispatchQueue.global().async {
        leftSum = forkJoinSum(left)
        group.leave()
    }
    group.enter()
    DispatchQueue.global().async {
        rightSum = forkJoinSum(right)
        group.leave()
    }
    group.wait()
    return leftSum + rightSum
}

let numbers = Array(1...8)
print(forkJoinSum(numbers[...]))

let nums = [1, 3, 5, 7, 9]
let target = 7

var lo = 0
var hi = nums.count - 1
var index = -1
while lo <= hi {
    let mid = (lo + hi) / 2
    if nums[mid] == target {
        index = mid
        break
    } else if nums[mid] < target {
        lo = mid + 1
    } else {
        hi = mid - 1
    }
}

print("found \(target) at index \(index)")

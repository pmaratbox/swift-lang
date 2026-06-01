let nums = [3, 1, 2]
let asc = nums.sorted()
let desc = nums.sorted(by: >)
print("asc:", asc.map(String.init).joined(separator: " "))
print("desc:", desc.map(String.init).joined(separator: " "))

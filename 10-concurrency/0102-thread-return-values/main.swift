import Foundation

var r1 = 0
var r2 = 0
let group = DispatchGroup()
let queue = DispatchQueue.global()

queue.async(group: group) { r1 = 3 * 3 }
queue.async(group: group) { r2 = 4 * 4 }

group.wait()
print(r1 + r2)

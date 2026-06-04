import Foundation

let joined = ("/tmp" as NSString).appendingPathComponent("file.txt")
let base = (joined as NSString).lastPathComponent
let ext = "." + (joined as NSString).pathExtension

print("\(joined) \(base) \(ext)")

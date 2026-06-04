import Foundation

let template = "hi {name}"
let vars = ["name": "Ada"]
var result = template
for (key, value) in vars {
    result = result.replacingOccurrences(of: "{\(key)}", with: value)
}
print(result)

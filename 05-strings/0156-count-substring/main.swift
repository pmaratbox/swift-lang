let haystack = Array("ababab")
let needle = Array("ab")
var count = 0
var i = 0
while i + needle.count <= haystack.count {
    if Array(haystack[i..<i + needle.count]) == needle {
        count += 1
        i += needle.count
    } else {
        i += 1
    }
}
print(count)

let text = Array("aaabbc")
var result = ""
var i = 0
while i < text.count {
    let ch = text[i]
    var count = 0
    while i < text.count && text[i] == ch {
        count += 1
        i += 1
    }
    result += "\(ch)\(count)"
}
print(result)

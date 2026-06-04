let mask = 5
var subs: [Int] = []
var sub = mask
while true {
    subs.append(sub)
    if sub == 0 { break }
    sub = (sub - 1) & mask
}
print(subs.map(String.init).joined(separator: " "))

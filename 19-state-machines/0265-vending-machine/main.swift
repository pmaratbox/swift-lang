let price = 25
var total = 0
for coin in [10, 10, 5] {
    total += coin
    if total >= price {
        print("dispensed")
        break
    }
}

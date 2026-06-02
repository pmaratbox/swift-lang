// Parsing "7" at run time keeps `n` a runtime value; writing `let n = 7`
// directly makes Swift warn that the later branches can never run.
let n = Int("7")!

if n < 10 {
    print("\(n) is less than 10")
} else if n == 10 {
    print("\(n) is equal to 10")
} else {
    print("\(n) is greater than 10")
}

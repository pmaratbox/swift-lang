// A transducer transforms a reducing step into a new reducing step.
typealias Reducer<Acc, T> = (Acc, T) -> Acc
typealias Transducer<Acc, A, B> = (@escaping Reducer<Acc, B>) -> Reducer<Acc, A>

func mapping<Acc, A, B>(_ f: @escaping (A) -> B) -> Transducer<Acc, A, B> {
    { step in { acc, x in step(acc, f(x)) } }
}

func filtering<Acc, A>(_ p: @escaping (A) -> Bool) -> Transducer<Acc, A, A> {
    { step in { acc, x in p(x) ? step(acc, x) : acc } }
}

let append: Reducer<[Int], Int> = { acc, x in acc + [x] }

// Compose: first +1, then keep evens.
let evens: Reducer<[Int], Int> = filtering { $0 % 2 == 0 }(append)
let xform: Reducer<[Int], Int> = mapping { (x: Int) in x + 1 }(evens)

let result = [1, 2, 3, 4].reduce([], xform)
print(result.map(String.init).joined(separator: " "))

import Foundation

func taskA() async -> Int { 10 }
func taskB() async -> Int { 20 }

let sem = DispatchSemaphore(value: 0)

Task {
    async let a = taskA()
    async let b = taskB()
    let sum = await a + b
    print(sum)
    sem.signal()
}

sem.wait()

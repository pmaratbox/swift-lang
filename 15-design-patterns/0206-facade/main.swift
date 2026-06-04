struct Sub1 { func initialize() {} }
struct Sub2 { func initialize() {} }
struct Sub3 { func initialize() {} }

struct Facade {
    let s1 = Sub1()
    let s2 = Sub2()
    let s3 = Sub3()

    func start() -> String {
        s1.initialize()
        s2.initialize()
        s3.initialize()
        return "ready"
    }
}

print(Facade().start())

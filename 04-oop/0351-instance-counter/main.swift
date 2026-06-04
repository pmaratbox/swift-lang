class InstanceCounter {
    static var count = 0
    init() {
        InstanceCounter.count += 1
    }
}

_ = InstanceCounter()
_ = InstanceCounter()
_ = InstanceCounter()
print(InstanceCounter.count)

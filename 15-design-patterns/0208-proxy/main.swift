protocol Subject {
    func request() -> String
}

struct RealSubject: Subject {
    func request() -> String { "loaded" }
}

final class VirtualProxy: Subject {
    private var real: RealSubject?

    func request() -> String {
        if real == nil {
            real = RealSubject()
        }
        return real!.request()
    }
}

let proxy: Subject = VirtualProxy()
print(proxy.request())

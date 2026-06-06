import Combine
import Foundation

struct VStride: SignedNumeric, Comparable, SchedulerTimeIntervalConvertible {
  var v: Int
  init(_ v: Int) { self.v = v }
  init?<T: BinaryInteger>(exactly s: T) { guard let i = Int(exactly: s) else { return nil }; v = i }
  init(integerLiteral value: Int) { self.v = value }
  var magnitude: Int { abs(v) }
  static func < (a: VStride, b: VStride) -> Bool { a.v < b.v }
  static func + (a: VStride, b: VStride) -> VStride { VStride(a.v + b.v) }
  static func - (a: VStride, b: VStride) -> VStride { VStride(a.v - b.v) }
  static func * (a: VStride, b: VStride) -> VStride { VStride(a.v * b.v) }
  static func += (a: inout VStride, b: VStride) { a.v += b.v }
  static func -= (a: inout VStride, b: VStride) { a.v -= b.v }
  static func *= (a: inout VStride, b: VStride) { a.v *= b.v }
  static var zero: VStride { VStride(0) }
  static func seconds(_ s: Int) -> VStride { VStride(s) }
  static func seconds(_ s: Double) -> VStride { VStride(Int(s)) }
  static func milliseconds(_ ms: Int) -> VStride { VStride(ms) }
  static func microseconds(_ us: Int) -> VStride { VStride(us) }
  static func nanoseconds(_ ns: Int) -> VStride { VStride(ns) }
}
struct VTime: Strideable {
  var t: Int
  func distance(to other: VTime) -> VStride { VStride(other.t - t) }
  func advanced(by n: VStride) -> VTime { VTime(t: t + n.v) }
}
final class VScheduler: Scheduler {
  typealias SchedulerTimeType = VTime
  typealias SchedulerOptions = Never
  var now = VTime(t: 0)
  var minimumTolerance = VStride(0)
  private var q: [(VTime, Int, () -> Void)] = []
  private var seq = 0
  func schedule(options: Never?, _ action: @escaping () -> Void) { action() }
  func schedule(after date: VTime, tolerance: VStride, options: Never?, _ action: @escaping () -> Void) { q.append((date, seq, action)); seq += 1 }
  func schedule(after date: VTime, interval: VStride, tolerance: VStride, options: Never?, _ action: @escaping () -> Void) -> Cancellable { q.append((date, seq, action)); seq += 1; return AnyCancellable {} }
  func run() { while !q.isEmpty { q.sort { $0.0.t != $1.0.t ? $0.0.t < $1.0.t : $0.1 < $1.1 }; let (time, _, a) = q.removeFirst(); now = time; a() } }
}

let vs = VScheduler()
let subject = PassthroughSubject<String, Never>()
var out: [String] = []

let c = subject
  .debounce(for: .milliseconds(30), scheduler: vs)
  .sink(receiveCompletion: { _ in }, receiveValue: { out.append($0) })

vs.schedule(after: VTime(t: 10), tolerance: .zero, options: nil) { subject.send("a") }
vs.schedule(after: VTime(t: 20), tolerance: .zero, options: nil) { subject.send("b") }
vs.schedule(after: VTime(t: 100), tolerance: .zero, options: nil) { subject.send("c") }
vs.schedule(after: VTime(t: 200), tolerance: .zero, options: nil) { subject.send(completion: .finished) }

vs.run()
_ = c
print(out.joined(separator: "\n"))

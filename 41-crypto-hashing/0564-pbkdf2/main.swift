import Foundation
import CommonCrypto

let password = "password"
let salt = Array("salt".utf8)
let rounds: UInt32 = 1000
let keyLength = 32

var derived = [UInt8](repeating: 0, count: keyLength)
let status = password.withCString { passwordPtr in
    CCKeyDerivationPBKDF(
        CCPBKDFAlgorithm(kCCPBKDF2),
        passwordPtr,
        password.utf8.count,
        salt,
        salt.count,
        CCPseudoRandomAlgorithm(kCCPRFHmacAlgSHA256),
        rounds,
        &derived,
        keyLength
    )
}

precondition(status == kCCSuccess, "PBKDF2 failed")
print(derived.map { String(format: "%02x", $0) }.joined())

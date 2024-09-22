import Foundation

public enum Secp256k1ECDSAKey {
    public static let algorithm: KeyAlgorithm = .secp256k1_ecdsa
    public static let capabilities: KeyCapabilities = [.sign, .authenticate]
}

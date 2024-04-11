import Foundation

/// A private asymmetric key.
///
/// In addition to their unique capabilities, private keys have all the capabilities
/// of public keys.
public protocol PrivateKey: PublicKey { }

extension PrivateKey {
    static public var type: AsymmetricKeyType {
        .private
    }
}

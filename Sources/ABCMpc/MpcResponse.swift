import Foundation

public struct KeyIdResponse: Codable {
    public let result: String
}

public struct GenerateShareResponse: Codable {
    public let keyId: String
    public let encryptedShare: String
    public let secretStore: String
    public let curve: String

    enum CodingKeys: String, CodingKey {
        case keyId = "key_id"
        case encryptedShare = "encrypted_share"
        case secretStore = "secret_store"
        case curve
    }
}

public typealias RecoverShareResponse = GenerateShareResponse

public struct ValidatePasswordAndSecretStoreResponse: Codable {
    public let result: Bool
}

public struct ValidateShareAndSecretStoreResponse: Codable {
    public let result: Bool
}

public struct PublicKeyResponse: Codable {
    public let result: String
}

public struct SignResponse: Codable {
    public let signature: String
}

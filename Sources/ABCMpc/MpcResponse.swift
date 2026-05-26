import Foundation

public struct KeyIdResponse: Codable {
    public let result: String
}

public struct GenerateShareResponse: Codable {
    public let keyId: String
    public let encryptedShare: String
    public let secretStore: String
    public let curve: String
    public let deprecationWarning: String?

    enum CodingKeys: String, CodingKey {
        case keyId = "key_id"
        case encryptedShare = "encrypted_share"
        case secretStore = "secret_store"
        case curve
        case deprecationWarning = "deprecation_warning"
    }
}

public typealias RecoverShareResponse = GenerateShareResponse

public struct ValidatePasswordAndSecretStoreResponse: Codable {
    public let result: Bool
    public let deprecationWarning: String?

    enum CodingKeys: String, CodingKey {
        case result
        case deprecationWarning = "deprecation_warning"
    }
}

public struct ValidateShareAndSecretStoreResponse: Codable {
    public let result: Bool
    public let deprecationWarning: String?

    enum CodingKeys: String, CodingKey {
        case result
        case deprecationWarning = "deprecation_warning"
    }
}

public struct PublicKeyResponse: Codable {
    public let result: String
    public let deprecationWarning: String?

    enum CodingKeys: String, CodingKey {
        case result
        case deprecationWarning = "deprecation_warning"
    }
}

public struct SignResponse: Codable {
    public let signature: String
    public let deprecationWarning: String?

    enum CodingKeys: String, CodingKey {
        case signature
        case deprecationWarning = "deprecation_warning"
    }
}

/// Secret store 포맷 버전.
/// - v2 (default): password 와 secret_store 둘 다 필요.
/// - v1 (deprecated): secret_store 만으로 복호화 가능. 하위 호환용.
public enum SecretStoreVersion: UInt8 {
    case v1 = 1
    case v2 = 2
}

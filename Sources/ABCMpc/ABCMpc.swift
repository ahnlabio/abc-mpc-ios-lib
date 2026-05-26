import Foundation
#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
import Darwin
#else
import Glibc
#endif

@_silgen_name("c_random_key_id")
private func c_random_key_id() -> UnsafeMutablePointer<CChar>?

@_silgen_name("c_random_generate_share")
private func c_random_generate_share(_ node_1_url: UnsafePointer<CChar>,
                              _ node_2_url: UnsafePointer<CChar>,
                              _ auth_token: UnsafePointer<CChar>,
                              _ mpc_token: UnsafePointer<CChar>,
                              _ key_id: UnsafePointer<CChar>,
                              _ curve: UnsafePointer<CChar>,
                              _ password: UnsafePointer<CChar>?,
                              _ version: UInt8) -> UnsafeMutablePointer<CChar>?

@_silgen_name("c_random_recover_share")
private func c_random_recover_share(_ node_1_url: UnsafePointer<CChar>,
                              _ node_2_url: UnsafePointer<CChar>,
                              _ auth_token: UnsafePointer<CChar>,
                              _ mpc_token: UnsafePointer<CChar>,
                              _ target_key_id: UnsafePointer<CChar>,
                              _ source_key_id: UnsafePointer<CChar>,
                              _ curve: UnsafePointer<CChar>,
                              _ password: UnsafePointer<CChar>?,
                              _ version: UInt8) -> UnsafeMutablePointer<CChar>?

@_silgen_name("c_validate_password_and_secret_store")
private func c_validate_password_and_secret_store(_ password: UnsafePointer<CChar>?,
                                                  _ secret_store: UnsafePointer<CChar>) -> UnsafeMutablePointer<CChar>?

@_silgen_name("c_validate_share_and_secret_store")
private func c_validate_share_and_secret_store(_ encrypted_share: UnsafePointer<CChar>,
                                            _ secret_store: UnsafePointer<CChar>,
                                            _ password: UnsafePointer<CChar>?) -> UnsafeMutablePointer<CChar>?

@_silgen_name("c_public_key")
private func c_public_key(_ key_id: UnsafePointer<CChar>,
                    _ encrypted_share: UnsafePointer<CChar>,
                    _ secret_store: UnsafePointer<CChar>,
                    _ curve: UnsafePointer<CChar>,
                    _ password: UnsafePointer<CChar>?) -> UnsafeMutablePointer<CChar>?

@_silgen_name("c_sign")
private func c_sign(_ node_1_url: UnsafePointer<CChar>,
                    _ auth_token: UnsafePointer<CChar>,
                    _ mpc_token: UnsafePointer<CChar>,
                    _ key_id: UnsafePointer<CChar>,
                    _ encrypted_share: UnsafePointer<CChar>,
                    _ secret_store: UnsafePointer<CChar>,
                    _ curve: UnsafePointer<CChar>,
                    _ message: UnsafePointer<CChar>,
                    _ password: UnsafePointer<CChar>?) -> UnsafeMutablePointer<CChar>?

@_silgen_name("c_sign_mta")
private func c_sign_mta(_ node_1_url: UnsafePointer<CChar>,
                        _ auth_token: UnsafePointer<CChar>,
                        _ mpc_token: UnsafePointer<CChar>,
                        _ key_id: UnsafePointer<CChar>,
                        _ encrypted_share: UnsafePointer<CChar>,
                        _ secret_store: UnsafePointer<CChar>,
                        _ message: UnsafePointer<CChar>,
                        _ password: UnsafePointer<CChar>?) -> UnsafeMutablePointer<CChar>?

@_silgen_name("c_sign_mta_derived")
private func c_sign_mta_derived(_ node_1_url: UnsafePointer<CChar>,
                                _ auth_token: UnsafePointer<CChar>,
                                _ mpc_token: UnsafePointer<CChar>,
                                _ key_id: UnsafePointer<CChar>,
                                _ encrypted_share: UnsafePointer<CChar>,
                                _ secret_store: UnsafePointer<CChar>,
                                _ message: UnsafePointer<CChar>,
                                _ chain_code: UnsafePointer<CChar>,
                                _ path: UnsafePointer<CChar>,
                                _ password: UnsafePointer<CChar>?) -> UnsafeMutablePointer<CChar>?

@_silgen_name("c_sign_with_chain_code")
private func c_sign_with_chain_code(_ node_1_url: UnsafePointer<CChar>,
                                    _ auth_token: UnsafePointer<CChar>,
                                    _ mpc_token: UnsafePointer<CChar>,
                                    _ key_id: UnsafePointer<CChar>,
                                    _ encrypted_share: UnsafePointer<CChar>,
                                    _ secret_store: UnsafePointer<CChar>,
                                    _ curve: UnsafePointer<CChar>,
                                    _ message: UnsafePointer<CChar>,
                                    _ chain_code: UnsafePointer<CChar>,
                                    _ path: UnsafePointer<CChar>,
                                    _ password: UnsafePointer<CChar>?) -> UnsafeMutablePointer<CChar>?

@_silgen_name("c_public_key_with_chain_code")
private func c_public_key_with_chain_code(_ key_id: UnsafePointer<CChar>,
                                          _ encrypted_share: UnsafePointer<CChar>,
                                          _ secret_store: UnsafePointer<CChar>,
                                          _ curve: UnsafePointer<CChar>,
                                          _ chain_code: UnsafePointer<CChar>,
                                          _ path: UnsafePointer<CChar>,
                                          _ password: UnsafePointer<CChar>?) -> UnsafeMutablePointer<CChar>?

@_silgen_name("c_import_private_key_to_share")
private func c_import_private_key_to_share(_ node_1_url: UnsafePointer<CChar>,
                                           _ node_2_url: UnsafePointer<CChar>,
                                           _ auth_token: UnsafePointer<CChar>,
                                           _ mpc_token: UnsafePointer<CChar>,
                                           _ private_key: UnsafePointer<CChar>,
                                           _ password: UnsafePointer<CChar>?,
                                           _ version: UInt8) -> UnsafeMutablePointer<CChar>?

@_silgen_name("c_verify_secp256k1")
private func c_verify_secp256k1(_ message_hex: UnsafePointer<CChar>,
                                _ signature_hex: UnsafePointer<CChar>,
                                _ public_key_hex: UnsafePointer<CChar>) -> Bool

@_silgen_name("c_verify_ed25519")
private func c_verify_ed25519(_ message_hex: UnsafePointer<CChar>,
                              _ signature_hex: UnsafePointer<CChar>,
                              _ public_key_hex: UnsafePointer<CChar>) -> Bool

@_silgen_name("c_string_free")
private func c_string_free(_ s: UnsafeMutablePointer<CChar>?)

/// Optional String 을 C 문자열 포인터로 변환해 클로저에 전달. nil 이면 null 포인터 전달.
private func withOptionalCString<R>(_ s: String?, _ body: (UnsafePointer<CChar>?) -> R) -> R {
    if let s = s {
        return s.withCString { body($0) }
    } else {
        return body(nil)
    }
}

public func generate_key_id() async -> Result<KeyIdResponse, MpcError> {
    var resultPtr: UnsafeMutablePointer<CChar>?

    resultPtr = c_random_key_id()

    guard let ptr = resultPtr else {
        return .failure(MpcError.operationFailed("Failed to generate key id"))
    }

    let response = String(cString: ptr)
    c_string_free(ptr)
    let result = response.parseMpcResponse(as: KeyIdResponse.self)

    return result
}

public func generate_share(
    node_1_url: String,
    node_2_url: String,
    auth_token: String,
    mpc_token: String,
    key_id: String,
    curve: String,
    password: String? = nil,
    version: SecretStoreVersion = .v2
) async -> Result<GenerateShareResponse, MpcError> {
    var resultPtr: UnsafeMutablePointer<CChar>?

    node_1_url.withCString { node_1_urlPtr in
        node_2_url.withCString { node_2_urlPtr in
            auth_token.withCString { authTokenPtr in
                mpc_token.withCString { mpcTokenPtr in
                    key_id.withCString { keyIdPtr in
                        curve.withCString { curvePtr in
                            withOptionalCString(password) { passwordPtr in
                                resultPtr = c_random_generate_share(node_1_urlPtr, node_2_urlPtr, authTokenPtr, mpcTokenPtr, keyIdPtr, curvePtr, passwordPtr, version.rawValue)
                            }
                        }
                    }
                }
            }
        }
    }

    guard let ptr = resultPtr else {
        return .failure(MpcError.operationFailed("Failed to generate share"))
    }

    let response = String(cString: ptr)
    c_string_free(ptr)
    let result = response.parseMpcResponse(as: GenerateShareResponse.self)
    return result
}

public func recover_share(
    node_1_url: String,
    node_2_url: String,
    auth_token: String,
    mpc_token: String,
    target_key_id: String,
    source_key_id: String,
    curve: String,
    password: String? = nil,
    version: SecretStoreVersion = .v2
) async -> Result<RecoverShareResponse, MpcError> {
    var resultPtr: UnsafeMutablePointer<CChar>?

    node_1_url.withCString { node_1_urlPtr in
        node_2_url.withCString { node_2_urlPtr in
            auth_token.withCString { authTokenPtr in
                mpc_token.withCString { mpcTokenPtr in
                    target_key_id.withCString { target_key_idPtr in
                        source_key_id.withCString { source_key_idPtr in
                            curve.withCString { curvePtr in
                                withOptionalCString(password) { passwordPtr in
                                    resultPtr = c_random_recover_share(node_1_urlPtr, node_2_urlPtr, authTokenPtr, mpcTokenPtr, target_key_idPtr, source_key_idPtr, curvePtr, passwordPtr, version.rawValue)
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    guard let ptr = resultPtr else {
        return .failure(MpcError.operationFailed("Failed to recover share"))
    }

    let response = String(cString: ptr)
    c_string_free(ptr)
    let result = response.parseMpcResponse(as: RecoverShareResponse.self)
    return result
}

public func validate_password_and_secret_store(
    password: String?,
    secret_store: String
) async -> Result<ValidatePasswordAndSecretStoreResponse, MpcError> {
    var resultPtr: UnsafeMutablePointer<CChar>?

    secret_store.withCString { secret_storePtr in
        withOptionalCString(password) { passwordPtr in
            resultPtr = c_validate_password_and_secret_store(passwordPtr, secret_storePtr)
        }
    }

    guard let ptr = resultPtr else {
        return .failure(MpcError.operationFailed("Failed to validate password and secret store"))
    }

    let response = String(cString: ptr)
    c_string_free(ptr)
    let result = response.parseMpcResponse(as: ValidatePasswordAndSecretStoreResponse.self)
    return result
}

public func validate_share_and_secret_store(
    encrypted_share: String,
    secret_store: String,
    password: String? = nil
) async -> Result<ValidateShareAndSecretStoreResponse, MpcError> {
    var resultPtr: UnsafeMutablePointer<CChar>?

    encrypted_share.withCString { encrypted_sharePtr in
        secret_store.withCString { secret_storePtr in
            withOptionalCString(password) { passwordPtr in
                resultPtr = c_validate_share_and_secret_store(encrypted_sharePtr, secret_storePtr, passwordPtr)
            }
        }
    }

    guard let ptr = resultPtr else {
        return .failure(MpcError.operationFailed("Failed to validate share and secret store"))
    }

    let response = String(cString: ptr)
    c_string_free(ptr)
    let result = response.parseMpcResponse(as: ValidateShareAndSecretStoreResponse.self)
    return result
}

public func public_key(
    key_id: String,
    encrypted_share: String,
    secret_store: String,
    curve: String,
    password: String? = nil
) async -> Result<PublicKeyResponse, MpcError> {
    var resultPtr: UnsafeMutablePointer<CChar>?

    key_id.withCString { key_idPtr in
        encrypted_share.withCString { encrypted_sharePtr in
            secret_store.withCString { secret_storePtr in
                curve.withCString { curvePtr in
                    withOptionalCString(password) { passwordPtr in
                        resultPtr = c_public_key(key_idPtr, encrypted_sharePtr, secret_storePtr, curvePtr, passwordPtr)
                    }
                }
            }
        }
    }

    guard let ptr = resultPtr else {
        return .failure(MpcError.operationFailed("Failed to get public key"))
    }

    let response = String(cString: ptr)
    c_string_free(ptr)
    let result = response.parseMpcResponse(as: PublicKeyResponse.self)
    return result
}

public func sign(
    node_1_url: String,
    auth_token: String,
    mpc_token: String,
    key_id: String,
    encrypted_share: String,
    secret_store: String,
    curve: String,
    message: String,
    password: String? = nil
) async -> Result<SignResponse, MpcError> {
    var resultPtr: UnsafeMutablePointer<CChar>?

    node_1_url.withCString { node_1_urlPtr in
        auth_token.withCString { authTokenPtr in
            mpc_token.withCString { mpcTokenPtr in
                key_id.withCString { key_idPtr in
                    encrypted_share.withCString { encrypted_sharePtr in
                        secret_store.withCString { secret_storePtr in
                            curve.withCString { curvePtr in
                                message.withCString { messagePtr in
                                    withOptionalCString(password) { passwordPtr in
                                        resultPtr = c_sign(node_1_urlPtr, authTokenPtr, mpcTokenPtr, key_idPtr, encrypted_sharePtr, secret_storePtr, curvePtr, messagePtr, passwordPtr)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    guard let ptr = resultPtr else {
        return .failure(MpcError.operationFailed("Failed to sign"))
    }

    let response = String(cString: ptr)
    c_string_free(ptr)
    let result = response.parseMpcResponse(as: SignResponse.self)
    return result
}

/// MTA 프로토콜을 사용한 secp256k1 서명
public func sign_mta(
    node_1_url: String,
    auth_token: String,
    mpc_token: String,
    key_id: String,
    encrypted_share: String,
    secret_store: String,
    message: String,
    password: String? = nil
) async -> Result<SignResponse, MpcError> {
    var resultPtr: UnsafeMutablePointer<CChar>?

    node_1_url.withCString { node_1_urlPtr in
        auth_token.withCString { authTokenPtr in
            mpc_token.withCString { mpcTokenPtr in
                key_id.withCString { key_idPtr in
                    encrypted_share.withCString { encrypted_sharePtr in
                        secret_store.withCString { secret_storePtr in
                            message.withCString { messagePtr in
                                withOptionalCString(password) { passwordPtr in
                                    resultPtr = c_sign_mta(node_1_urlPtr, authTokenPtr, mpcTokenPtr, key_idPtr, encrypted_sharePtr, secret_storePtr, messagePtr, passwordPtr)
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    guard let ptr = resultPtr else {
        return .failure(MpcError.operationFailed("Failed to sign with MTA"))
    }

    let response = String(cString: ptr)
    c_string_free(ptr)
    let result = response.parseMpcResponse(as: SignResponse.self)
    return result
}

/// MTA 프로토콜을 사용한 secp256k1 파생 키 서명
public func sign_mta_derived(
    node_1_url: String,
    auth_token: String,
    mpc_token: String,
    key_id: String,
    encrypted_share: String,
    secret_store: String,
    message: String,
    chain_code: String,
    path: String,
    password: String? = nil
) async -> Result<SignResponse, MpcError> {
    var resultPtr: UnsafeMutablePointer<CChar>?

    node_1_url.withCString { node_1_urlPtr in
        auth_token.withCString { authTokenPtr in
            mpc_token.withCString { mpcTokenPtr in
                key_id.withCString { key_idPtr in
                    encrypted_share.withCString { encrypted_sharePtr in
                        secret_store.withCString { secret_storePtr in
                            message.withCString { messagePtr in
                                chain_code.withCString { chain_codePtr in
                                    path.withCString { pathPtr in
                                        withOptionalCString(password) { passwordPtr in
                                            resultPtr = c_sign_mta_derived(node_1_urlPtr, authTokenPtr, mpcTokenPtr, key_idPtr, encrypted_sharePtr, secret_storePtr, messagePtr, chain_codePtr, pathPtr, passwordPtr)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    guard let ptr = resultPtr else {
        return .failure(MpcError.operationFailed("Failed to sign with MTA derived"))
    }

    let response = String(cString: ptr)
    c_string_free(ptr)
    let result = response.parseMpcResponse(as: SignResponse.self)
    return result
}

/// 체인코드와 경로를 사용한 파생 키 서명 (secp256k1, ed25519 모두 지원)
public func sign_with_chain_code(
    node_1_url: String,
    auth_token: String,
    mpc_token: String,
    key_id: String,
    encrypted_share: String,
    secret_store: String,
    curve: String,
    message: String,
    chain_code: String,
    path: String,
    password: String? = nil
) async -> Result<SignResponse, MpcError> {
    var resultPtr: UnsafeMutablePointer<CChar>?

    node_1_url.withCString { node_1_urlPtr in
        auth_token.withCString { authTokenPtr in
            mpc_token.withCString { mpcTokenPtr in
                key_id.withCString { key_idPtr in
                    encrypted_share.withCString { encrypted_sharePtr in
                        secret_store.withCString { secret_storePtr in
                            curve.withCString { curvePtr in
                                message.withCString { messagePtr in
                                    chain_code.withCString { chain_codePtr in
                                        path.withCString { pathPtr in
                                            withOptionalCString(password) { passwordPtr in
                                                resultPtr = c_sign_with_chain_code(node_1_urlPtr, authTokenPtr, mpcTokenPtr, key_idPtr, encrypted_sharePtr, secret_storePtr, curvePtr, messagePtr, chain_codePtr, pathPtr, passwordPtr)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    guard let ptr = resultPtr else {
        return .failure(MpcError.operationFailed("Failed to sign with chain code"))
    }

    let response = String(cString: ptr)
    c_string_free(ptr)
    let result = response.parseMpcResponse(as: SignResponse.self)
    return result
}

/// 체인코드와 경로를 사용한 파생 공개키 조회 (secp256k1, ed25519 모두 지원)
public func public_key_with_chain_code(
    key_id: String,
    encrypted_share: String,
    secret_store: String,
    curve: String,
    chain_code: String,
    path: String,
    password: String? = nil
) async -> Result<PublicKeyResponse, MpcError> {
    var resultPtr: UnsafeMutablePointer<CChar>?

    key_id.withCString { key_idPtr in
        encrypted_share.withCString { encrypted_sharePtr in
            secret_store.withCString { secret_storePtr in
                curve.withCString { curvePtr in
                    chain_code.withCString { chain_codePtr in
                        path.withCString { pathPtr in
                            withOptionalCString(password) { passwordPtr in
                                resultPtr = c_public_key_with_chain_code(key_idPtr, encrypted_sharePtr, secret_storePtr, curvePtr, chain_codePtr, pathPtr, passwordPtr)
                            }
                        }
                    }
                }
            }
        }
    }

    guard let ptr = resultPtr else {
        return .failure(MpcError.operationFailed("Failed to get public key with chain code"))
    }

    let response = String(cString: ptr)
    c_string_free(ptr)
    let result = response.parseMpcResponse(as: PublicKeyResponse.self)
    return result
}

/// 기존 secp256k1 개인키를 MPC 키 공유로 변환
public func import_private_key_to_share(
    node_1_url: String,
    node_2_url: String,
    auth_token: String,
    mpc_token: String,
    private_key: String,
    password: String? = nil,
    version: SecretStoreVersion = .v2
) async -> Result<GenerateShareResponse, MpcError> {
    var resultPtr: UnsafeMutablePointer<CChar>?

    node_1_url.withCString { node_1_urlPtr in
        node_2_url.withCString { node_2_urlPtr in
            auth_token.withCString { authTokenPtr in
                mpc_token.withCString { mpcTokenPtr in
                    private_key.withCString { private_keyPtr in
                        withOptionalCString(password) { passwordPtr in
                            resultPtr = c_import_private_key_to_share(node_1_urlPtr, node_2_urlPtr, authTokenPtr, mpcTokenPtr, private_keyPtr, passwordPtr, version.rawValue)
                        }
                    }
                }
            }
        }
    }

    guard let ptr = resultPtr else {
        return .failure(MpcError.operationFailed("Failed to import private key to share"))
    }

    let response = String(cString: ptr)
    c_string_free(ptr)
    let result = response.parseMpcResponse(as: GenerateShareResponse.self)
    return result
}

/// secp256k1 signature 검증. signature 는 r||s hex (128자) 또는 r||s||v hex (130자, Ethereum 스타일) 모두 허용.
public func verify_secp256k1(
    message: String,
    signature: String,
    public_key: String
) async -> Result<Bool, MpcError> {
    var ok: Bool = false
    message.withCString { msgPtr in
        signature.withCString { sigPtr in
            public_key.withCString { pkPtr in
                ok = c_verify_secp256k1(msgPtr, sigPtr, pkPtr)
            }
        }
    }
    return .success(ok)
}

/// ed25519 signature 검증. signature 는 r||s hex (128자), public_key 는 32B hex (64자).
public func verify_ed25519(
    message: String,
    signature: String,
    public_key: String
) async -> Result<Bool, MpcError> {
    var ok: Bool = false
    message.withCString { msgPtr in
        signature.withCString { sigPtr in
            public_key.withCString { pkPtr in
                ok = c_verify_ed25519(msgPtr, sigPtr, pkPtr)
            }
        }
    }
    return .success(ok)
}

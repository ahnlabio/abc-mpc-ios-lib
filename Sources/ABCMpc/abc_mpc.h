#ifndef ABC_MPC_H
#define ABC_MPC_H

#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C"
{
#endif

    extern char *c_random_key_id(void);

    /*
     * Secret store 포맷:
     *  - version == 1 : v1 (deprecated). password 는 NULL 가능 (있어도 무관).
     *  - version == 2 : v2. password 는 반드시 non-NULL.
     */
    extern char *c_random_generate_share(const char *node_1_url,
                                         const char *node_2_url,
                                         const char *auth_token,
                                         const char *mpc_token,
                                         const char *key_id,
                                         const char *curve,
                                         const char *password,
                                         uint8_t version);

    extern char *c_random_recover_share(const char *node_1_url,
                                        const char *node_2_url,
                                        const char *auth_token,
                                        const char *mpc_token,
                                        const char *target_key_id,
                                        const char *source_key_id,
                                        const char *curve,
                                        const char *password,
                                        uint8_t version);

    /*
     * 아래 sign / public_key / validate 류는 secret_store base64 길이로
     * v1(64B)/v2(48B) 를 자동 감지합니다.
     *  - v1 secret_store : password NULL 허용
     *  - v2 secret_store : password 반드시 non-NULL (없으면 -122)
     */
    extern char *c_validate_password_and_secret_store(const char *password,
                                                      const char *secret_sotre);

    extern char *c_validate_share_and_secret_store(const char *encrypted_share,
                                                   const char *secret_store,
                                                   const char *password);

    extern char *c_public_key(const char *key_id,
                              const char *encrypted_share,
                              const char *secret_store,
                              const char *curve,
                              const char *password);

    extern char *c_sign(const char *node_1_url,
                        const char *auth_token,
                        const char *mpc_token,
                        const char *key_id,
                        const char *encrypted_share,
                        const char *secret_store,
                        const char *curve,
                        const char *message,
                        const char *password);

    extern char *c_sign_mta(const char *node_1_url,
                            const char *auth_token,
                            const char *mpc_token,
                            const char *key_id,
                            const char *encrypted_share,
                            const char *secret_store,
                            const char *message,
                            const char *password);

    extern char *c_sign_mta_derived(const char *node_1_url,
                                    const char *auth_token,
                                    const char *mpc_token,
                                    const char *key_id,
                                    const char *encrypted_share,
                                    const char *secret_store,
                                    const char *message,
                                    const char *chain_code,
                                    const char *path,
                                    const char *password);

    extern char *c_sign_with_chain_code(const char *node_1_url,
                                        const char *auth_token,
                                        const char *mpc_token,
                                        const char *key_id,
                                        const char *encrypted_share,
                                        const char *secret_store,
                                        const char *curve,
                                        const char *message,
                                        const char *chain_code,
                                        const char *path,
                                        const char *password);

    extern char *c_public_key_with_chain_code(const char *key_id,
                                              const char *encrypted_share,
                                              const char *secret_store,
                                              const char *curve,
                                              const char *chain_code,
                                              const char *path,
                                              const char *password);

    extern char *c_import_private_key_to_share(const char *node_1_url,
                                               const char *node_2_url,
                                               const char *auth_token,
                                               const char *mpc_token,
                                               const char *private_key,
                                               const char *password,
                                               uint8_t version);

    extern bool c_verify_secp256k1(const char *message_hex,
                                   const char *signature_hex,
                                   const char *public_key_hex);

    extern bool c_verify_ed25519(const char *message_hex,
                                 const char *signature_hex,
                                 const char *public_key_hex);

    extern void c_string_free(char *s);

#ifdef __cplusplus
}
#endif

#endif /* ABC_MPC_H */

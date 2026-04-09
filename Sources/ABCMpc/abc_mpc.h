#ifndef ABC_MPC_H
#define ABC_MPC_H

#include <stdint.h>

#ifdef __cplusplus
extern "C"
{
#endif

    extern char *c_random_key_id();

    extern char *c_random_generate_share(const char *node_1_url,
                                         const char *node_2_url,
                                         const char *token,
                                         const char *key_id,
                                         const char *curve,
                                         const char *password);

    extern char *c_random_recover_share(const char *node_1_url,
                                        const char *node_2_url,
                                        const char *token,
                                        const char *target_key_id,
                                        const char *source_key_id,
                                        const char *curve,
                                        const char *password);

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
                        const char *token,
                        const char *key_id,
                        const char *encrypted_share,
                        const char *secret_store,
                        const char *curve,
                        const char *message,
                        const char *password);

    extern char *c_sign_mta(const char *node_1_url,
                            const char *token,
                            const char *key_id,
                            const char *encrypted_share,
                            const char *secret_store,
                            const char *message,
                            const char *password);

    extern char *c_sign_mta_derived(const char *node_1_url,
                                    const char *token,
                                    const char *key_id,
                                    const char *encrypted_share,
                                    const char *secret_store,
                                    const char *message,
                                    const char *chain_code,
                                    const char *path,
                                    const char *password);

    extern char *c_sign_with_chain_code(const char *node_1_url,
                                        const char *token,
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
                                               const char *token,
                                               const char *private_key,
                                               const char *password);

    extern void c_string_free(char *s);

#ifdef __cplusplus
}
#endif

#endif /* ABC_MPC_H */

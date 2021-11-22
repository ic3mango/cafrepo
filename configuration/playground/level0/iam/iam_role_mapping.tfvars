role_mapping = {
  built_in_role_mapping = {
    storage_accounts = {
      level0 = {
        "Storage Blob Data Contributor" = {
          managed_identities = {
            keys = ["htx_operation"]
          }
        }
      }
      level1 = {
        "Storage Blob Data Contributor" = {
          managed_identities = {
            keys = ["htx_operation"]
          }
        }
      }
      level2 = {
        "Storage Blob Data Contributor" = {
          managed_identities = {
            keys = ["htx_operation"]
          }
        }
      }
      level3 = {
        "Storage Blob Data Contributor" = {
          managed_identities = {
            keys = ["htx_operation"]
          }
        }
      }
      level4 = {
        "Storage Blob Data Contributor" = {
          managed_identities = {
            keys = ["htx_operation"]
          }
        }
      }
    }
    keyvaults = {
      kv1 = {
        # lz_key = "" to be defined when the keyvault is created in a different lz

        "Key Vault Secrets User" = {
          managed_identities = {
            # lz_key = "" to be defined when the msi is created in a different lz
            keys = ["htx_operation"]
          }
        }
      }
    }
  }
}
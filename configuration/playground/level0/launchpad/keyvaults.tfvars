
keyvaults = {
  level0 = {
    name                = "cc-plg-vault-level0"
    resource_group_key  = "level0"
    sku_name            = "standard"
    soft_delete_enabled = true
    tags = {
      tfstate = "level0"
    }

    creation_policies = {
      logged_in_user = {
        # if the key is set to "logged_in_user" add the user running terraform in the keyvault policy
        # More examples in /examples/keyvault
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

  level1 = {
    name                = "cc-plg-vault-level1"
    resource_group_key  = "level1"
    sku_name            = "standard"
    soft_delete_enabled = true
    tags = {
      tfstate = "level1"
    }

    creation_policies = {
      logged_in_user = {
        # if the key is set to "logged_in_user" add the user running terraform in the keyvault policy
        # More examples in /examples/keyvault
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }
  }

  level2 = {
    name                = "cc-plg-vault-level2"
    resource_group_key  = "level2"
    sku_name            = "standard"
    soft_delete_enabled = true
    tags = {
      tfstate = "level2"
    }

    creation_policies = {
      logged_in_user = {
        # if the key is set to "logged_in_user" add the user running terraform in the keyvault policy
        # More examples in /examples/keyvault
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }
  }

  level3 = {
    name                = "cc-plg-vault-level3"
    resource_group_key  = "level3"
    sku_name            = "standard"
    soft_delete_enabled = true
    tags = {
      tfstate = "level3"
    }

    creation_policies = {
      logged_in_user = {
        # if the key is set to "logged_in_user" add the user running terraform in the keyvault policy
        # More examples in /examples/keyvault
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }
  }

  level4 = {
    name                = "cc-plg-vault-level4"
    resource_group_key  = "level4"
    sku_name            = "standard"
    soft_delete_enabled = true
    tags = {
      tfstate = "level4"
      purpose = "application key storage"
    }

    creation_policies = {
      logged_in_user = {
        # if the key is set to "logged_in_user" add the user running terraform in the keyvault policy
        # More examples in /examples/keyvault
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }
  }
}

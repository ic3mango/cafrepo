landingzone = {
  backend_type = "azurerm"
  level        = "level0"
  key          = "launchpad"
}


# Default region. When not set to a resource it will use that value
default_region = "region1"

# naming convention settings
# for more settings on naming convention, please refer to the provider documentation: https://github.com/aztfmod/terraform-provider-azurecaf
#
# passthrough means the default CAF naming convention is not applied and you are responsible
# of the unicity of the names you are giving. the CAF provider will clear out
passthrough = true
# adds random chars at the end of the names produced by the provider
random_length = 0

# Inherit_tags defines if a resource will inherit it's resource group tags
inherit_tags = true

regions = {
  region1 = "southeastasia"
  region2 = "eastasia"
}

launchpad_key_names = {
  azuread_app            = "caf_launchpad_level0"
  keyvault_client_secret = "htx-plg-launchpad-level0"
  tfstates = [
    "level0",
  ]
}

resource_groups = {
  level0 = {
    name = "htx-plg-level0"
    tags = {
      level = "level0"
      type  = "base"
    }
  }
  level1 = {
    name = "htx-plg-level1"
    tags = {
      level = "level1"
    }
  }
  level2 = {
    name = "htx-plg-level2"
    tags = {
      level = "level2"
    }
  }
  level3 = {
    name = "htx-plg-level3"
    tags = {
      level = "level3"
    }
  }
  level4 = {
    name = "htx-plg-level4"
    tags = {
      level  = "level4"
      agency = "psg"
    }
  }
}


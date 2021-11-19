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

# Default region. When not set to a resource it will use that value
default_region = "region1"

regions = {
  region1 = "southeastasia"
}

launchpad_key_names = {
  keyvault = "level0"
  tfstates = [
    "level0",
    "level1",
    "level2",
    "level3",
    "level4"
  ]
}

tags = {
  project_code               = "playground"
  name                       = "caf terraform configuration and landingzone playground"
  data_classification        = "public"
  application_classification = "standard"
}

# create a log analytics workspace
# ref https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace

resource "azurerm_resource_group" "loganalytics" {
  name                = "${var.environment}-logs-${random_pet.aksrandom.id}"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  retention_in_days   = 30
}  

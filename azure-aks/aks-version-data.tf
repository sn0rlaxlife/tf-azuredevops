#using this data to retrieve version of k8s supported by aks service
# source https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/kubernetes_service_version

data "azurerm_kubernetes_service_versions" "current" {
  location        = azurerm_resource_group.aks_rg.location
  include_preview = false
}

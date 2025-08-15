output "resource_group" {
  description = "The name of the resource group containing the AKS cluster"
  value = azurerm_resource_group.rg.name
}

output "aks_name" {
   description = "The name of the AKS cluster"
  value = azurerm_kubernetes_cluster.aks.name
}

output "kube_admin_config_raw" {
  description = "Base64-encoded kubeconfig (admin)."
  value       = azurerm_kubernetes_cluster.aks.kube_admin_config_raw
  sensitive   = true
}

output "acr_login_server" {
  description = "The login server URL of the Azure Container Registry"
  value = azurerm_container_registry.acr.login_server
}
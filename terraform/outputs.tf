output "resource_group" {
  value = azurerm_resource_group.main.rg.name
}

output "aks_name" {
  value = azurerm_kubernetes_cluster.main.aks.name
}

output "kube_admin_config_raw" {
  description = "Base64-encoded kubeconfig (admin)."
  value       = azurerm_kubernetes_cluster.aks.kube_admin_config_raw
  sensitive   = true
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.main.login_server
}
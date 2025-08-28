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

output "kube_host" {
  description = "AKS Kubernetes host"
  value       = azurerm_kubernetes_cluster.aks.kube_config[0].host
  sensitive   = true
}

output "kube_client_cert" {
  description = "Base 64 decoded kubernetes client cert"
  value = base64decode(azurerm_kubernetes_cluster.aks.kube_config[0].client_certificate)
  sensitive   = true

}

output "kube_key" {
  description = "Base64 decoded kubernetes key"
  value = base64decode(azurerm_kubernetes_cluster.aks.kube_config[0].client_key)
  sensitive   = true

}

output "kube_ca_cert" {
  description = "Base64 decoded kubernetes CS cert"
  value = base64decode(azurerm_kubernetes_cluster.aks.kube_config[0].cluster_ca_certificate)
  sensitive   = true

}

output "acr_login_server" {
  description = "The login server URL of the Azure Container Registry"
  value = azurerm_container_registry.acr.login_server
}
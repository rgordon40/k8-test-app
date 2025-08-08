variable "prefix" {
  description = "Resource name prefix"
  type        = string
  default     = "hellohelm"
}

variable "location" {
  description = "Azure location"
  type        = string
  default     = "eastus"
}

variable "node_count" {
  description = "AKS node count"
  type        = number
  default     = 1
}

variable "node_vm_size" {
  description = "AKS node vm size"
  type        = string
  default     = "Standard_DS2_v2"
}

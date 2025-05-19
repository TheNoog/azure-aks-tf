terraform
variable "resource_group_name" {
  description = "The name of the resource group where the AKS cluster will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
}

variable "key_vault_name" {
  description = "The name of the Azure Key Vault."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account."
  type        = string
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster."
  type        = string
}

variable "agent_count" {
  description = "The number of agent nodes in the AKS cluster."
  type        = number
}

variable "vm_size" {
  description = "The size of the virtual machines for the AKS agent nodes."
  type        = string
}
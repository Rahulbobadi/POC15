variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "AKS resource group"
  type        = string
}

variable "cluster_name" {
  description = "AKS cluster name"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix"
  type        = string
}

variable "node_count" {
  description = "Number of AKS nodes"
  type        = number
}

variable "vm_size" {
  description = "AKS node VM size"
  type        = string
}
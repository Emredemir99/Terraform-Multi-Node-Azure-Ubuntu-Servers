################## Network Configurations ##################

variable "subscription_id_var" {
  type      = string
  sensitive = true
}

variable "tenant_id_var" {
  type      = string
  sensitive = true
}

variable "resource_group_var" {
  type      = string
}

variable "location_var" {
  type      = string
}

variable "subnet_var" {
  type      = string
}

variable "vnet_var" {
  type      = string
}

################## Virtual Machine Configurations ##################

variable "node_host_names_var" {
  type      = list(any)
}

variable "node_ips_var" {
  type      = list(any)
}

variable "vm_size_var" {
  type      = string
}


variable "node_count_var" {
  type      = number
}

variable "storage_account_type_var" {
  type      = string
}

variable "os_offer_var" {
  type      = string
}

variable "sku_var" {
  type      = string
}

################## Disk Configurations ##################

variable "is_data_disk_enable" {
  type    = bool
  default = false
}

variable "os_disk_size_gb_var" {
  type = number
}

variable "data_disk_size_gb_var" {
  type = number
}

variable "data_disk_count_per_vm" {
  type = number
  default = 0
}

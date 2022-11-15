
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
  sensitive = true
}

variable "location_var" {
  type      = string
  sensitive = true
}

variable "node_count" {
  type = number
}

variable "node_host_names" {
  type = list(any)
}

variable "subnet" {
  type      = string
  sensitive = true
}

variable "vnet" {
  type      = string
  sensitive = true
}

variable "node_ips" {
  type = list(any)
}

variable "size_var" {
  type      = string
  sensitive = true
}

variable "admin_username_var" {
  type      = string
  sensitive = true
}

variable "admin_password_var" {
  type      = string
  sensitive = true
}

variable "disk_size_gb_var" {
  type = number
}

variable "is_data_disk_enable" {
  type    = bool
  default = false
}

variable "data_disk_count_per_vm" {
  type = number
  default = 0
}
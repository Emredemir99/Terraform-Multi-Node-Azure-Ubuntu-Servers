# USAGE

1.  Clone this repository
2.  Install Azure cli packages  or enter ```az login``` if installed
3.  Update the **"variables.tfvars"** with  node information and Azure vm credentials
4.  You can run firstly ```terraform init``` connect to backend
5.  You can run secondly ```terraform validate``` configuration validation check
6.  You can run ```terraform plan --var-file=variables.tfvars``` to see what will be provisioned
7.  If you are happy with the plan, run ```terraform apply --var-file=variables.tfvars```
8. or Auto approve this configuration ```terraform apply --var-file=variables.tfvars --auto-approve```
9.  If you wish to destroy the provisioned resources, run ```terraform destroy --var-file=variables.tfvars```


# OPTIONS General Conf (variables.tfvars)
| variable_name                 | description                                                      | type         |
|-------------------------------|------------------------------------------------------------------|--------------|
| subscription_id_var           | Azure subcription ID                                             | string       |
| tenant_id_var                 | Tenant ID                                                        | string       |
| resource_group_var            | Resource Group                                                   | string       |
| location_var                  | VM Location  (Usually West Europe)                               | string       |
| subnet_var                    | Subnet                                                           | string       |
| vnet_var                      | VNet                                                             | string       |


# OPTIONS VM Conf (variables.tfvars)
| variable_name                 | description                                                      | type         |
|-------------------------------|------------------------------------------------------------------|--------------|
| node_count_var                | VM Count                                                         | number       |
| node_host_names_var           | VM HostNames                                                     | list(any)    |
| node_ips_var                  | VM IP Addresses                                                  | list(any)    |
| vm_size_var                   | Machine Type   (Usually Standard_D8s_v5)                         | string       |
| sku_var                       | OS Version                                                       | string       |
| os_offer_var                  | OS Disk Size (GB)                                                | string       |
| storage_account_type_var      | Storage type (Usually Standard_LRS)                              | string       |
| admin_username_var            | Azure VM Username                                                | string       |
| admin_password_var            | Azure VM Password                                                | string       |




# OPTIONS VM Disk Conf (variables.tfvars)
| variable_name                 | description                                                      | type         |
|-------------------------------|------------------------------------------------------------------|--------------|
| is_data_disk_enable           | Data disk enable or disable                                      | bool         |
| os_disk_size_gb_var           | OS Disk Size      (GB)                                           | number       |
| data_disk_size_gb_var         | Data Disk Size    (GB)                                           | number       |
| data_disk_count_per_vm        | Data Disk count                                                  | number       |




Author Information
------------------

Emre Demir
SRE



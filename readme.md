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
| subnet                        | Subnet                                                           | string       |
| vnet                          | VNet                                                             | string       |


# OPTIONS VM Conf (variables.tfvars)
| variable_name                 | description                                                      | type         |
|-------------------------------|------------------------------------------------------------------|--------------|
| node_count                    | VM Count                                                         | number       |
| node_host_names               | VM HostNames                                                     | list(any)    |
| node_ips                      | VM IP Addresses                                                  | list(any)    |
| size_var                      | Machine Type                                                     | string       |
| admin_username_var            | Admin Username                                                   | string       |
| admin_password_var            | Admin Password                                                   | string       |

# OPTIONS VM Disk Conf (variables.tfvars)
| variable_name                 | description                                                      | type         |
|-------------------------------|------------------------------------------------------------------|--------------|
| is_data_disk_enable           | Data disk enable or disable                                      | bool         |
| disk_size_gb_var              | OS Disk Size      (GB)                                           | number       |
| data_disk_count_per_vm        | Data Disk count                                                  | number       |




Author Information
------------------

Emre Demir
SRE



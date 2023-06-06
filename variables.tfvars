################## Network Configurations ##################
subscription_id_var              = "subscription_id_number"
tenant_id_var                    = "tenant_id_number"
resource_group_var               = "RG-Example"
location_var                     = "West Europe"
subnet_var                       = "subnetexample"
vnet_var                         = "VNET-Example"



################## Virtual Machine Configurations ##################
node_count_var                   =  3
node_host_names_var              = ["mynode1","mynode2","mynode3"]
node_ips_var                     = ["nodeIP1", "nodeIP2", "nodeIP3"]
vm_size_var                      = "machine_type_id:example=Standard_D8s_v5"
sku_var                          = "20_04-lts-gen2"
os_offer_var                     = "0001-com-ubuntu-server-focal"
storage_account_type_var         = "StandardSSD_LRS"
admin_username_var               = "username"
admin_password_var               = "password"



################## Disk Configurations ##################
is_data_disk_enable              =  true
os_disk_size_gb_var              =  100
data_disk_size_gb_var            =  200
data_disk_count_per_vm           =  0

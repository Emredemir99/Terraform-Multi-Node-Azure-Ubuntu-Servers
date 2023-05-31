# USAGE

1.  Clone this repository
2.  Checkout a new branch based on one of the Terraform-azure branches
3.  Install Azure cli packages  or enter ```az login``` if installed
4.  Update the **"variables.tfvars"** with  node information and Azure vm credentials
5.  You can run firstly ```terraform init``` connect to backend
6.  You can run secondly ```terraform validate``` configuration validation check
7.  You can run ```terraform plan --var-file=variables.tfvars``` to see what will be provisioned
8.  If you are happy with the plan, run ```terraform apply --var-file=variables.tfvars```
9. or Auto approve this configuration ```terraform apply --var-file=variables.tfvars --auto-approve```
10.  If you wish to destroy the provisioned resources, run ```terraform destroy --var-file=variables.tfvars```




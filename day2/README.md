# Day 2 - Variables and Multiple Configurations

This assignment demonstrates Terraform variables and variable files.

Files created:
- main.tf
- dev.tfvars
- prod.tfvars

Commands used:

terraform init
terraform apply -var-file="dev.tfvars"
terraform apply -var-file="prod.tfvars"

Outputs:
- dev.txt for development environment
- prod.txt for production environment
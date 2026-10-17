# Terraform Azure Provisioning

## Project Overview
This project demonstrates Infrastructure as Code (IaC)
using Terraform to provision Azure resources.

## Technologies
- Terraform
- Microsoft Azure
- Azure Managed Identity
- Git and GitHub
- Ubuntu Linux

## Infrastructure
- Resource Group: terraform-learning-rg
- Azure Region: East US
- Authentication: System-assigned Managed Identity

## Terraform Workflow
1. terraform init
2. terraform fmt
3. terraform validate
4. terraform plan
5. terraform apply
6. terraform state list

## Security
- Azure Managed Identity is used for authentication.
- No Azure credentials are stored in the Terraform code.
- Terraform state files are excluded from Git.

## Results
Successfully provisioned an Azure Resource Group
using Terraform running on an Azure Ubuntu VM.

# Day 19: Create RDS MySQL DB Instance

## Overview
This project demonstrates how to create an **AWS RDS MySQL DB instance** using **Terraform**.  
It is part of the 30-Days AWS Terraform Challenge for DevOps engineers.

## AWS Resources Created
- RDS MySQL DB instance
- Subnet group (optional)
- Security group allowing DB access
- Parameter group (optional)

## Project Structure
```
day19-rds-mysql/
├── main.tf
├── variables.tf
├── outputs.tf
├── README.md
└── terraform.tfvars
```
## Clone Repo
```
git clone https://github.com/NahidCSERU/30-Days-AWS-Terraform-Challenge.git
cd day19-rds-mysql
```
## Usages
1. Initialize Terraform:
```
terraform init
```
2. Preview changes:
```
terraform plan
```
3. Apply configuration:
```
terraform apply
```
4. Destroy resources:
```
terraform destroy
```
## Notes
- Ensure AWS CLI credentials are configured.

- Adjust `terraform.tfvars` for your VPC/subnets/CIDR.

- This instance is for learning purposes; skip final snapshot and deletion protection are enabled.
# Day 28 – Terraform Variables & Outputs

## Overview
This project demonstrates how to use Terraform **variables** to parameterize your infrastructure and **outputs** to expose information after deployment.  

Key concepts:
- Input Variables (`variables.tf`)
- Default values and type constraints
- Terraform outputs (`outputs.tf`)  
- Using `terraform.tfvars` for custom values


## Prerequisites
- Terraform installed (v1.0+ recommended)
- AWS CLI configured with access credentials
- Basic knowledge of Terraform syntax



## Files

- `main.tf` → Main infrastructure resources
- `variables.tf` → Define input variables
- `outputs.tf` → Define output values
- `terraform.tfvars` → Custom variable values



## Usage

1. **Initialize Terraform**
```
terraform init
```
2. Validate configuration
```
terraform validate
```

3. Plan infrastructure
```
terraform plan
```

4. Apply infrastructure
```
terraform apply
```

5. View outputs
```
terraform output
```
## Key Commands

- `terraform init` → Initialize Terraform working directory

- `terraform validate` → Validate configuration

- `terraform plan` → Preview infrastructure changes

- `terraform apply` → Deploy infrastructure

- `terraform output` → Display output values

- `terraform destroy` → Destroy resources
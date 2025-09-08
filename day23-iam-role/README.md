# Day 23 – Create IAM Role for EC2

This project creates an **IAM Role** for EC2 instances using Terraform.

## 📌 What it does
- Creates an IAM Role for EC2
- Attaches an IAM Policy (S3 Full Access as example)
- Creates an IAM Instance Profile (needed for EC2)

## 🛠️ How to Run
```
# Initialize Terraform
terraform init

# Preview changes
terraform plan

# Apply configuration
terraform apply -auto-approve
```
## Outputs

- IAM Role Name

- Instance Profile Name

## Use Case

Attach the generated **Instance Profile** when launching an EC2 instance, so the EC2 can access AWS resources (like S3) without hardcoding credentials.
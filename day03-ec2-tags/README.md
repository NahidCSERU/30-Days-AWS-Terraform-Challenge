# Day 03: Add Tags to EC2 Instance

This project demonstrates how to **add custom tags to an EC2 instance** using Terraform.

---

## 📌 Features
- Creates an EC2 instance in AWS
- Applies multiple tags:
  - `Name = DevOps-EC2`
  - `Environment = Development`
  - `Project = Day03-EC2-Tags`
  - `Owner = Nahid Hasan`
- Outputs instance ID, Public IP, and Tags

---

## 🚀 Commands to Run
```bash
# Initialize Terraform
terraform init

# See the plan
terraform plan

# Apply the changes
terraform apply -auto-approve

# Destroy when not needed
terraform destroy -auto-approve
```
## 📂 Project Structure
``` 
day03-ec2-tags/
│── main.tf        # Terraform resources
│── variables.tf   # Input variables
│── outputs.tf     # Output values
│── README.md      # Documentation
```
## ✅ Real-Life DevOps Use Case
Tags are very useful in cost tracking, automation, and resource management.
For example:

* `Environment` tag separates `Dev`, `Staging`, `Prod`.

* `Owner` tag shows who created the resource.

* `Project` tag helps group resources by project.
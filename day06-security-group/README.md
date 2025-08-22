# Day 06 – Create Security Group (allow SSH, HTTP)

This project creates a **Security Group** in AWS using Terraform that allows:
- **SSH (22)**
- **HTTP (80)**
- **All Outbound Traffic**

## 📂 Repo Structure
```
day06-security-group/
│── main.tf
│── variables.tf
│── outputs.tf
│── provider.tf
│── README.md
```
## 🚀 How to Run

### Initialize Terraform
```
terraform init
```
### Validate configuration
```
terraform validate
```
### Apply changes
```
terraform apply -auto-approve
```
## 🔑 Outputs

* Security Group ID

* Security Group Name

## 🛠️ Customization

Change allowed CIDR blocks in **variables.tf:**
```
allowed_ssh_cidr  = "0.0.0.0/0" # Replace with your IP for better security
allowed_http_cidr = "0.0.0.0/0"
```
# 🚀 Day 07 – Launch EC2 with Security Group (Terraform)

This project provisions:
- A **VPC**
- A **Public Subnet**
- An **Internet Gateway**
- A **Route Table with Internet Access**
- A **Security Group** (Allow SSH & HTTP)
- An **EC2 Instance** (Ubuntu 20.04)

---

## 📂 Project Structure
```
day07-ec2-with-sg/
│── main.tf # Terraform resources
│── variables.tf # Input variables
│── outputs.tf # Outputs
│── provider.tf # AWS provider setup
│── README.md # Documentation
```
## ⚡ How to Deploy

### 1️⃣ Initialize Terraform  
```
terraform init
```
### 2️⃣ Validate configuration
```
terraform validate
```
### 3️⃣ Plan resources
```
terraform plan -var="key_name=your-keypair-name"
```
### 4️⃣ Apply and create resources
```
terraform apply -var="key_name=your-keypair-name" -auto-approve
```
## 📌 Outputs

After apply, you will get:

* ✅ EC2 Instance Public IP

* ✅ EC2 Instance ID

* ✅ Security Group ID
## 🧹 Clean Up

To delete everything:
```
terraform destroy -auto-approve
```
## 🌐 Notes

* Update `key_name` with your existing AWS Key Pair for SSH access.

* Default ports allowed: **22 (SSH)** & **80 (HTTP)**

* Region: `us-east-1` (can be changed in `variables.tf`)
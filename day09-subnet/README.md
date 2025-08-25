# Day 09: Create Subnet inside VPC

This project demonstrates how to create **a VPC with one Public Subnet and one Private Subnet** using Terraform.

---

## 📂 Project Files
- `main.tf` → Defines VPC and Subnets
- `variables.tf` → Input variables
- `outputs.tf` → Outputs (VPC ID, Subnet IDs)
- `README.md` → Documentation

---

## 🚀 Usage

### 1️⃣ Initialize Terraform
```bash
terraform init
```
### 2️⃣ Validate configuration
```
terraform validate
```
### 3️⃣ Apply and create resources
```
terraform apply -auto-approve
```
### 4️⃣ Check Outputs
```
terraform output
```
## ✅ Expected Resources

* VPC → `10.0.0.0/16`

* Public Subnet → `10.0.1.0/24`

* Private Subnet → `10.0.2.0/24`
## 📸 Diagram
```
   VPC (10.0.0.0/16)
   ├── Public Subnet (10.0.1.0/24)  → map_public_ip_on_launch = true
   └── Private Subnet (10.0.2.0/24)
```
## 🔑 Learning Outcomes

* Understand VPC & Subnet relationship

* Create Public and Private subnets

* Use variables for flexible configuration

* Output subnet IDs for reuse
# 🚀 Day 10: Create Internet Gateway + Attach to VPC

This project creates an **AWS VPC** and attaches an **Internet Gateway** to it using Terraform.

---

## 📂 Project Structure
```
day10-internet-gateway/
│── main.tf # VPC + Internet Gateway
│── variables.tf # Input variables
│── outputs.tf # Outputs (VPC ID, IGW ID)
│── provider.tf # AWS provider config
│── README.md # Documentation
```
## 🚀 How to Run

### 1️⃣ Initialize Terraform
```
terraform init
```
### 2️⃣ Validate configuration
```
terraform validate
```
### 3️⃣ Apply changes
```
terraform apply -auto-approve
```
## 📊 Example Output
```
vpc_id               = vpc-0a12b3456c789d012
internet_gateway_id  = igw-0123abcd4567efgh8
```
## 🧑‍💻 Author

👤 **Nahid Hasan**   
💡 Part of 30 Days Terraform Challenge for DevOps
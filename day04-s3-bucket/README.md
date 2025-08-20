# Day 04: Create AWS S3 Bucket with Terraform

This project demonstrates how to create an **Amazon S3 Bucket** using **Terraform**.

---

## 📂 Project Structure
```
day04-s3-bucket/
│── main.tf # Terraform resources (S3 bucket + encryption)
│── variables.tf # Input variables
│── outputs.tf # Outputs
│── provider.tf # AWS provider configuration
│── README.md # Documentation
```
## 🚀 How to Run
### 1️⃣ Initialize Terraform
```bash
terraform init
```
### 2️⃣ Preview Plan
```bash
terraform plan
```
### 3️⃣ Apply Changes
```bash
terraform apply -auto-approve
```
### 🗑 Destroy Bucket
```bash
terraform destroy -auto-approve
```
### 🔐 Notes

* Bucket name must be **globally unique**.

* Change the `bucket_name` variable in `variables.tf` before running.

* Server-Side Encryption (AES256) is enabled by default.

# Day 17 – Create S3 Bucket for Logs

This project creates an **S3 bucket** in AWS for storing logs (e.g., CloudTrail, ELB, or custom application logs).
## 📂 Project Structure
```
day17-s3-logs/
├── README.md
├── main.tf
├── variables.tf
├── outputs.tf
```
## 🚀 Features
- Creates an S3 bucket
- Enables server-side encryption (SSE-S3)
- Versioning enabled for log integrity
- Bucket policy to enforce access control

## 📦 Usage
```
terraform init
terraform apply
```
## 🛑 Cleanup
```
terraform destroy
```

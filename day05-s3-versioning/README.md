# 📌 Day 05 – Enable Versioning in S3 Bucket

This Terraform project creates an **S3 bucket with versioning enabled**.  
Versioning helps preserve, retrieve, and restore every version of every object stored in your bucket.

---

## 🚀 Features
- Creates an S3 bucket
- Enables versioning
- Adds tags for project identification
- Outputs bucket name and ARN

---

## 📂 Project Structure
```
day05-s3-versioning/
│── main.tf # Terraform resources
│── variables.tf # Input variables
│── outputs.tf # Output values
│── provider.tf # AWS provider config
│── README.md # Documentation
```
## ⚙️ Prerequisites
- [Terraform >= 1.5](https://developer.hashicorp.com/terraform/downloads)
- AWS CLI configured (`aws configure`)
- An AWS account with S3 permissions
## 📝 Usage
### 1️⃣ Clone the repository:
```
git clone https://github.com/NahidCSERU/30-Days-AWS-Terraform-Challenge.git
cd day05-s3-versioning
```
### 2️⃣ Initialize Terraform:
```
terraform init
```

### 3️⃣ Preview the plan:
```
terraform plan

```
### 4️⃣ Apply the configuration:
```
terraform apply -auto-approve
```

### 5️⃣ Verify bucket in AWS Console → S3 → Buckets

## 📤 Outputs

* Bucket Name → Your S3 bucket name

* Bucket ARN → Amazon Resource Name of the bucket    
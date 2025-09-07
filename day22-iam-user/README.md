# Day 22 – IAM User + Policy (Terraform)

This project demonstrates how to create an **IAM User** and attach a custom **IAM Policy** using Terraform.

---

## 📂 Project Structure
```
day22-iam-user/
│── main.tf # IAM resources (user, policy, attachment)
│── variables.tf # Input variables
│── outputs.tf # Outputs
│── provider.tf # AWS provider config
│── README.md # Documentation
```
## 🚀 Usage

1. Initialize Terraform:
   ```
   terraform init
   ```
2. review changes:
    ```
    terraform plan
    ```
3. Apply configuration:
    ```
    terraform apply -auto-approve
    ```
## ✅ Outputs

- **IAM User Name**

- **Policy ARN**
## 📌 Notes

- Change variables in variables.tf to customize user and policy name.

- Delete resources after testing:
    ```
    terraform destroy -auto-approve
    ```

# Day 18 – Enable S3 Lifecycle Policy (Auto Archive)

## Description
This project demonstrates how to create an **AWS S3 bucket** with a **Lifecycle Policy** using Terraform. The policy automatically:

- Moves objects to **STANDARD_IA** after 30 days.
- Moves objects to **GLACIER** after 60 days.
- Deletes objects after 1 year.

Versioning is enabled for object protection.

## How to Run

1. Initialize Terraform:
```
terraform init
```
2. Plan Terraform changes:
```
terraform plan
```

3. Apply changes:
```
terraform apply
```

4. Verify in AWS Console → S3 → Lifecycle Rules.
## Notes

- Ensure your AWS CLI is configured with proper credentials.

- You can modify `days` and `storage_class` in `main.tf` as needed.

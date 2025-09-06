# Day 21: Create RDS Snapshot

This project demonstrates how to:
- Launch an RDS MySQL instance
- Create a manual RDS snapshot with Terraform
## 📂 Repo Structure
```
day21-rds-snapshot/
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
└── README.md
```
## 🚀 Steps

1. Initialize Terraform
   ```
   terraform init
   ```
2. Apply resources
    ```
    terraform apply -auto-approve
    ```
3. Verify snapshot
    ```
    aws rds describe-db-snapshots --db-snapshot-identifier day21-mysql-db-snapshot
    ```
4. Destroy resources
    ```
    terraform destroy -auto-approve
    ```

After `terraform apply`, you’ll have:

- One RDS MySQL instance

- One manual RDS snapshot created automatically
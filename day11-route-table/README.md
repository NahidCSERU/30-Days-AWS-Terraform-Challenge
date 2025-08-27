# Day 11: AWS Route Table + Route

This project demonstrates creating a VPC, a public subnet, an Internet Gateway, a Route Table, and adding a default route (0.0.0.0/0) to the IGW. Finally, the Route Table is associated with the public subnet.

## Steps to Deploy

**1. Initialize Terraform:**
```
terraform init
```
**2. Preview changes:**
```
terraform plan
```

**3. Apply changes:**
```
terraform apply
```

**4. Outputs:**

* VPC ID

* Public Subnet ID

* Route Table ID
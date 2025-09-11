# Day 25: Application Load Balancer (ALB)

This project demonstrates how to create an **Application Load Balancer (ALB)** in AWS using **Terraform**.  
The ALB distributes traffic across **two EC2 instances** running Nginx.

---

## 📌 Architecture
- **ALB** → Routes HTTP traffic (port 80)  
- **Target Group** → Registered EC2 instances  
- **Auto Scaling Group** → Maintains 2 EC2 instances  
- **Security Groups** → 
  - ALB allows HTTP from the internet  
  - EC2 allows HTTP from ALB only  

---

## 🚀 Setup

### 1. Initialize Terraform
```
terraform init
```
### 2. Apply configuration

```
terraform apply -auto-approve
```
### 3. Get ALB DNS Name

```
terraform output alb_dns_name
```

Open in browser:
```
http://<alb-dns-name>
```

You should see:
```
Hello from ip-xxx-xxx-xxx-xxx
```

Each refresh will show a different instance hostname.
## 🛠️ Tech Stack

- AWS ALB

- EC2 (Amazon Linux 2)

- Nginx (installed via user_data)

- Terraform

## 📖 Summary

This project shows how to build a **highly available web setup** using:

- **Application Load Balancer** (traffic distribution)

- **Auto Scaling Group** (ensures 2 instances are always running)

- **Terraform** (Infrastructure as Code)
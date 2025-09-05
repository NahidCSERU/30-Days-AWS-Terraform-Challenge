# Day 20: Connect EC2 with RDS MySQL (SG rules)

## 📌 Project Overview
This project demonstrates how to connect an **EC2 instance** to an **Amazon RDS MySQL** database using **Security Group rules**.

### 🔑 Concepts Covered
- Launching RDS MySQL
- Launching EC2 instance
- Configuring Security Groups
- Testing MySQL connection from EC2

---

## 📂 Project Files
- `terraform/` → Infrastructure as Code for RDS + EC2 + SG
- `ec2/connect_mysql.sh` → Script to connect EC2 → RDS
- `sql/init.sql` → Sample SQL schema

---

## 🚀 How to Deploy

### 1. Provision Infrastructure
```
cd terraform
terraform init
terraform apply -auto-approve
```
This will create:

- C2 instance

- RDS MySQL instance

- Security Groups with inbound/outbound rules
### 2. Connect to EC2
```
ssh -i ec2-key.pem ubuntu@<EC2_PUBLIC_IP>
```
### 3. Install MySQL Client
```
sudo apt update -y
sudo apt install mysql-client -y
```
### 4. Connect EC2 → RDS
```
mysql -h <RDS_ENDPOINT> -u admin -p
```
## 📊 Example Output
```
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| myappdb            |
| mysql              |
| performance_schema |
+--------------------+
```
## 🧹 Destroy Resources
```
terraform destroy -auto-approve
```


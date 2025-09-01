# Day 16: Mount EBS Volume to EC2 using User Data

## 📌 Overview
This project demonstrates how to **automatically mount an EBS volume to an EC2 instance** using a `user_data` script during instance launch.  
It ensures that the extra storage is formatted, mounted, and persists after reboot.

---

## 🚀 Steps

### 1. Create an EC2 instance
- Launch EC2 (Ubuntu or Amazon Linux).
- Attach an **extra EBS volume** (e.g., `/dev/xvdf`).

### 2. Add User Data script
Copy the `user_data.sh` content into the **Advanced → User data** field when launching the EC2 instance.

### 3. Verify inside EC2
```
df -h       # check mounted volumes
lsblk       # check attached block devices
```
You should see /data directory mounted with your new EBS volume.
## 📂 Files

- `user_data.sh` → Script for auto-mounting EBS

- `terraform/` → Infrastructure as Code example for automating EC2 + EBS provisioning
## ✅ Sample Output
```
$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       20G  1.2G   19G   6% /
/dev/xvdf        10G   24M   10G   1% /data
```
## 🛠️ Tools Used

- AWS EC2

- AWS EBS

- Linux (Ubuntu/Debian)

- User Data Script

- Terraform (optional)
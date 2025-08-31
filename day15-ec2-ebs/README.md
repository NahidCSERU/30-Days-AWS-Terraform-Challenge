# 🚀 Day 15 – Attach EBS Volume to EC2 (Simple Project)

This project shows how to **create and attach an EBS volume** to an EC2 instance using a single Bash script.

---

## 📂 Project Structure
- `attach-ebs.sh` → Script to create & attach an EBS volume
- `README.md` → Project documentation

---

## 🛠️ Prerequisites
- AWS CLI installed & configured (`aws configure`)
- An existing EC2 instance running

---

## ⚡ Usage
Run the script:
```
./attach-ebs.sh <size-in-GB> <availability-zone> <instance-id>
```
Example:
```
./attach-ebs.sh 5 ap-south-1a i-0abcd1234efgh5678
```
## 📌 Inside EC2 (Format & Mount)

After attaching, login to your EC2 instance and run:
```
sudo mkfs -t ext4 /dev/xvdf
sudo mkdir -p /mnt/ebs
sudo mount /dev/xvdf /mnt/ebs
```
Verify:
```
df -h
lsblk
```
## 🎯 Learning Goals

- Learn how to **create an EBS volume**

- Learn how to **attach it to an EC2 instance**

- Format & mount the volume inside Linux

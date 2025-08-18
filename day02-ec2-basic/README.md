# Day 02 – Create First AWS EC2 Instance 🚀

This project creates a basic **AWS EC2 instance** using Terraform.  
It is part of my 30 Days of AWS + Terraform learning journey.  

---

## 🔹 What We Did
- Created an EC2 instance in the default VPC.  
- Allowed **SSH (port 22)** using a security group.  
- Used Terraform variables for region, AMI, and instance type.  
- Outputs the **Instance ID, Public IP, and DNS**.  

---

## 📂 Project Structure
day02-ec2-basic/  
│── main.tf # Terraform resources  
│── variables.tf # Input variables  
│── outputs.tf # Outputs  
│── README.md # Documentation

---

## 🔹 How to Run
### 1. Initialize Terraform
`terraform init`   
### 2. Validate the configuration
`terraform validate`  
### 3. See the execution plan
`terraform plan`   
### 4. Apply the configuration (creates EC2)   
`terraform apply -auto-approve`  
## 🔹 Verify EC2
**After apply, check outputs:**    
 
`terraform output`  

**Or directly SSH into the instance:**  

`ssh -i <your-key>.pem ec2-user@<public_ip>`  
## 🔹 Clean Up
**To destroy resources and avoid extra charges:**  
 
`terraform destroy -auto-approve`  
## ✅ Learning Outcome
* Understood how to launch an EC2 instance using Terraform.

* Learned about AMI, Instance Type, Security Groups, and Outputs.

* First step towards building Infrastructure as Code for AWS.
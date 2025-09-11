# Day 26: Target Group + ALB Listener

This project demonstrates how to configure an **Application Load Balancer (ALB)** in AWS with:
- A **Target Group**
- An **HTTP Listener**

The ALB forwards incoming traffic on port 80 to the target group.

---

## 📌 Architecture
- **ALB** → Listens on port 80
- **Target Group** → Defines backend instances
- **Listener** → Forwards HTTP requests to the target group

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
(At this stage, the Target Group has no registered instances. In the next step you can attach EC2 or an Auto Scaling Group.)
## 🛠️ Tech Stack
    
*   **AWS ALB**
    
*   **Target Group**
    
*   **Listener**
    
*   **Terraform**
    
## 📖 Summary
    
This setup provisions the **core components of an ALB**:
*   Security Group (allowing HTTP)

*   ALB
    
*   Target Group
    
*   Listener (forwarding traffic)
    
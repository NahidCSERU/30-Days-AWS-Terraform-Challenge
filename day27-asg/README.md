# Day 27: AutoScaling Group with Launch Template

This project creates an **AutoScaling Group (ASG)** using Terraform with:
- A Launch Template
- Application Load Balancer (ALB)
- Target Group and Listener
- Apache installed on EC2 via User Data


## Steps to Deploy

```
terraform init
terraform apply -auto-approve
```
## Outputs

After deployment, check the output:
```
alb_dns_name = asg-alb-XXXXXXXXX.ap-south-1.elb.amazonaws.com
```

Open it in your browser → you should see:
```
Hello from AutoScaling Group 🚀
```
## Why This Project?

- Demonstrates **scalable architecture** on AWS

- Ensures **high availability** with multiple instances

- Uses **Terraform IaC** for automation
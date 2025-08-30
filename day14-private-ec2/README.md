# Day 14: Private EC2 Instance + Bastion Host

## Overview
This project demonstrates setting up a **Private EC2 instance** inside a **private subnet** and accessing it securely through a **Bastion Host** in a public subnet using Terraform on AWS.

- **Private EC2**: Cannot be accessed directly from the internet. Usually hosts databases or internal apps.
- **Bastion Host**: Public EC2 instance used as a gateway to access private instances securely.
- **Security Groups**: Control inbound/outbound traffic for both instances.

---

## Architecture Diagram
```
    +---------------------+
    |  Your Laptop / SSH  |
    +----------+----------+
               |
               | SSH
               v
    +---------------------+
    | Bastion Host (Public)|
    | Security Group: 22  |
    +----------+----------+
               |
               | SSH
               v
    +---------------------+
    | Private EC2 Instance |
    | Security Group: Only |
    | accessible via Bastion|
    +---------------------+
```
## Features

- Public Subnet: Bastion Host with SSH access
- Private Subnet: Private EC2 instance (no direct internet access)
- Security Groups configured for secure access
- Terraform scripts to provision all resources
- SSH access via Bastion Host
- Easily deployable and reusable

---

## Prerequisites

- AWS Account
- Terraform installed (`terraform --version`)
- Existing AWS Key Pair (for SSH)
- Basic Linux knowledge

---

## Terraform Setup

### 1. Initialize Terraform

```
cd terraform
terraform init
```
### 2. Plan Deployment
```
terraform plan -var 'key_name=your-key-pair-name'
```
### 3. Apply Deployment
```
terraform apply -var 'key_name=your-key-pair-name'
```
After apply completes, Terraform outputs the Bastion public IP and Private EC2 instance ID.

## SSH Access
**Step 1: SSH to Bastion Host**   
```
ssh -i your-key.pem ec2-user@<bastion-public-ip>
```
**Step 2: SSH to Private EC2 via Bastion**  
Option 1: Using ProxyJump
```
ssh -i your-key.pem -o "ProxyJump ec2-user@<bastion-public-ip>" ec2-user@<private-private-ip>
```
Option 2: From Bastion Host
```
ssh -i your-key.pem ec2-user@<private-private-ip>
```
## Security Best Practices
- Restrict Bastion SSH access to only your IP (`0.0.0.0/0` should be replaced with your office/home IP in production)

- Use strong SSH keys

- Monitor Bastion Host logs for unauthorized access

## Cleanup
To destroy the deployed resources:
```
terraform destroy -var 'key_name=your-key-pair-name'
```
## References
- [AWS VPC Documentation](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html?utm_source=chatgpt.com)

- [Terraform AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs?utm_source=chatgpt.com)
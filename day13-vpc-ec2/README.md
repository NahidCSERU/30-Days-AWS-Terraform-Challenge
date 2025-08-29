# Day 13: Public EC2 Instance inside VPC

This project creates a simple **VPC setup with a public EC2 instance** using Terraform.

## Architecture

- **VPC** (10.0.0.0/16)
- **Public Subnet** (10.0.1.0/24)
- **Internet Gateway**
- **Public Route Table**
- **Security Group** (allows SSH and HTTP)
- **EC2 Instance** (t2.micro with public IP)

## Usage

1. Initialize Terraform
    ```
   terraform init
    ```
2. Validate the configuration
    ```
    terraform validate
    ```

3. Apply the configuration
    ```
    terraform apply -auto-approve
    ```
4. Get the EC2 Public IP
    ```
    terraform output ec2_public_ip
    ```
5. Connect via SSH
    ```
    ssh -i my-key.pem ec2-user@<PUBLIC_IP>
    ```
## Clean Up
```
To destroy all resources:
```
## Requirements

* Terraform >= 1.5.0

* AWS CLI configured

* An existing EC2 key pair in AWS (`my-key`)
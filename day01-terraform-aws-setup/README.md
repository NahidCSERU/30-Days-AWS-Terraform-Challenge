# Day 1 – Setup Terraform with AWS Provider

This repository contains the **basic setup of Terraform with AWS Provider**.  
The goal is to initialize Terraform, configure AWS provider, and validate the setup.

---

## 📌 Steps to Reproduce

### 1. Install Terraform
    # Linux (Ubuntu/Debian)
    sudo apt update && sudo apt install -y wget unzip
    wget https://releases.hashicorp.com/terraform/1.7.5/terraform_1.7.5_linux_amd64.zip
    unzip terraform_1.7.5_linux_amd64.zip
    sudo mv terraform /usr/local/bin/
    terraform -v

### 2. Configure AWS CLI
    aws configure      
    #Enter AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, region, and output format 
### 3. Clone this repo
    git clone https://github.com/NahidCSERU/30-Days-AWS-Terraform-Challenge.git
    cd day01-terraform-aws-setup


### 4. Initialize Terraform

    terraform init

### 5. Validate configuration
    terraform validate
### 📂 Repository Structure

day01-terraform-aws-setup/   
│   
├── main.tf        # Terraform AWS provider configuration   
└── README.md      # Documentation
### ✅ Expected Output

* terraform init will download the AWS provider plugin.

* terraform validate should show:  
    Success! The configuration is valid.
*Enter AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, region, and output format*

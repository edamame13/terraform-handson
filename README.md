# Terraform VPC/Subnet Example

This repository contains a simple Terraform configuration for creating basic AWS networking resources.  
The example is intended for learning and hands-on practice with Terraform.

## Contents
- `main.tf`  
  Defines the AWS provider and sample resources:
  - VPC (`aws_vpc`)
  - Subnet (`aws_subnet`)

Currently, the resource definitions are commented out for reference.

## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) installed (v1.5+ recommended)  
- An AWS account  
- AWS credentials configured via one of the following:

### Option 1: Environment variables
```bash
export AWS_ACCESS_KEY_ID=your_access_key
export AWS_SECRET_ACCESS_KEY=your_secret_key

Option 2: AWS CLI credentials file

Located at ~/.aws/credentials

Usage

1. Initialize Terraform

terraform init

2. Review the execution plan

terraform plan

3. Apply the configuration

terraform apply

4. Destroy the resources

terraform destroy

Notes
	•	Do not commit any .tfstate or credential files.
	•	The .gitignore in this repo ensures that local state and temporary files are excluded.
	•	.terraform.lock.hcl is safe to commit and helps ensure consistent provider versions.

⸻

Happy Terraforming! 🚀

---

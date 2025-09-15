# Terraform Hands-on

This repository contains Terraform code to provision infrastructure on AWS.  
It demonstrates how to modularize resources, switch between **dev** and **prod** environments, and build a VPC with an EC2 web server.

---

## What was implemented

- **Module creation**
  - Built reusable Terraform modules
  - Enabled environment switching between `dev` and `prod` using variable files (`terraform.tfvars`)

- **EC2 Web server**
  - Provisioned an EC2 instance (Amazon Linux 2023)
  - Installed and enabled **Nginx** automatically via `user_data`
  - Configured a Security Group to allow HTTP (port 80) access from the specified `myip`

- **VPC setup**
  - Created a VPC (`10.0.0.0/16`)
  - Created a Public Subnet (`10.0.0.0/24`)
  - Attached an Internet Gateway and configured a Route Table for internet access

---

## Directory structure (example)

```
Terraform/
├── Handson/
│   ├── modules/
│   │   └── web/              # Web server module
│   ├── module-output/
│   │   ├── env/
│   │   │   ├── dev/          # Development environment
│   │   │   └── prod/         # Production environment
│   └── vpc-subnet/           # VPC/Subnet definitions
```

---

## Usage

1.Move to the environment directory:  
   ```
   cd module-output/env/dev
   ```

2.Initialize Terraform:

```
terraform init
```


3.Preview the execution plan:

```
terraform plan
```


4.Apply the configuration:

```
terraform apply -var-file=terraform.tfvars
```


⸻

Notes
	•	terraform.tfvars contains sensitive data (e.g., IP addresses). It is recommended not to commit it to GitHub.
	•	To exclude variable files from version control, add the following to .gitignore:

*.tfvars
*.tfvars.json

---
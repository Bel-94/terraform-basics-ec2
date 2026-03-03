# Terraform EC2 Lab (AWS)

A small Terraform project to practice Infrastructure as Code by provisioning an EC2 instance with a security group (SSH access) on AWS.

## What this creates
- 1 EC2 instance
- 1 Security Group allowing SSH from a specified CIDR

## Prerequisites
- AWS account + credentials configured (AWS CLI)
- Terraform installed

## How to run
1. Clone repo
2. Copy example vars:
```bash
   cp terraform.tfvars.example terraform.tfvars
```

3. Initialize:
```bash
   terraform init
```

4. Plan
```bash 
   terraform plan
```

5. Apply
```bash
    terraform apply
```

6. Cleanup

```bash
    terraform destroy
```

## Notes
- Do not commit terraform.tfvars, state files, or key pairs.
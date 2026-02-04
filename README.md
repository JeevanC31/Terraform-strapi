# Terraform EC2 + Strapi

This project provisions an AWS EC2 instance using **Terraform modules** and runs **Strapi** on it.

---

## Overview
- Modular Terraform structure (EC2, Security Group, Key Pair)
- Ubuntu 22.04 EC2
- SSH key generated and managed by Terraform
- Node.js 18
- Strapi running in development mode

---

## Structure
```text
modules/
  ec2/
  security_group/
  keypair/
main.tf
provider.tf
variables.tf
terraform.tfvars

Deploy
terraform init
terraform apply

SSH
ssh -i strapi-key.pem ubuntu@<EC2_PUBLIC_IP>

Run Strapi
cd strapi
npm run develop


Access:

http://<EC2_PUBLIC_IP>:1337

Notes

Instance size is configurable (t3.micro / t3.small)

Admin UI runs in development mode due to resource limits

Swap memory is used for stability

Cleanup
terraform destroy
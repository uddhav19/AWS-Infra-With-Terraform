# AWS-Infra-With-Terraform 

> Provision a complete AWS infrastructure (VPC + EC2) using modular Terraform.

---

## 📦 Resources Provisioned

**Networking (VPC Module)**
- Custom VPC with configurable CIDR
- Public and private subnets
- Internet Gateway + Route Tables
- Security Groups

**Compute (EC2 Module)**
- EC2 instance in public subnet
- SSH Key Pair access
- Security Group association

---

## 📂 Project Structure

```
terraform-aws-vpc-ec2/
├── modules/
│   ├── vpc/          # main.tf, variables.tf, outputs.tf
│   └── ec2/          # main.tf, variables.tf, outputs.tf
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── .gitignore
└── README.md
```

---

## ⚙️ Prerequisites

- AWS account with CLI configured (`aws configure`)
- Terraform v1.3+
- IAM user with permissions for VPC, EC2, and Networking

---

## 🚀 Getting Started

```bash
# 1. Clone the repository
git clone https://github.com/uddhav19/terraform-aws-infrastructure.git
cd terraform-aws-infrastructure

# 2. Set up variables
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars with your values (region, CIDRs, instance type, key pair)

# 3. Initialize, plan, and apply
terraform init
terraform plan
terraform apply
```

---

## 🧹 Cleanup

```bash
terraform destroy
```

---

## 🔐 Security Practices

- No credentials committed to version control
- `.terraform/`, `*.tfstate`, and `*.tfvars` excluded via `.gitignore`
- Security Groups scoped to minimum required access
- Modular design for reusability and separation of concerns

---

## 👨‍💻 Author

**Uddhav Hon**

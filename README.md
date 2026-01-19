# terraform-aws-infrastructure
AWS infrastructure creation using terraform ( AWS network and EC2 inatnce)

This project demonstrates the use of **Terraform (Infrastructure as Code)** to provision a complete **AWS infrastructure** in a modular and reusable way.  
The infrastructure includes networking components and compute resources deployed securely within a custom VPC.

---

## 🚀 Project Overview

The following AWS resources are provisioned using Terraform:

- Custom Virtual Private Cloud (VPC)
- Public and private subnets
- Internet Gateway (IGW)
- Route tables and route table associations
- Security Groups
- EC2 instances
- SSH Key Pair
- Modular Terraform structure (VPC and EC2 modules)

This project follows **Terraform best practices**, including module usage, variable abstraction, and separation of concerns.

---

## 🧱 Architecture Components

### Networking (VPC Module)
- VPC with custom CIDR block
- Public and private subnets
- Internet Gateway attached to the VPC
- Route tables with internet routing
- Route table associations for subnets
- Security Groups for controlled inbound and outbound access

### Compute (EC2 Module)
- EC2 instance launched inside the VPC
- Instance associated with Security Group
- SSH access using Key Pair
- Instance deployed in a public subnet for internet access

---

## 📂 Project Structure

```text
terraform-aws-vpc-ec2/
│── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── ec2/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│── main.tf
│── provider.tf
│── variables.tf
│── outputs.tf
│── terraform.tfvars.example
│── .gitignore
│── README.md

⚙️ Prerequisites

Before running this project, ensure you have:

AWS account

AWS CLI configured (aws configure)

Terraform installed (v1.3+ recommended)

IAM user with sufficient permissions (VPC, EC2, IAM, Networking)

🛠️ How to Use This Project
1️⃣ Clone the Repository
git clone https://github.com/<your-username>/terraform-aws-vpc-ec2.git
cd terraform-aws-vpc-ec2

2️⃣ Configure Variables

Create a terraform.tfvars file using the example provided:

cp terraform.tfvars.example terraform.tfvars


Update values such as:

AWS region

VPC CIDR

Subnet CIDRs

Instance type

Key pair name

3️⃣ Initialize Terraform
terraform init

4️⃣ Preview Infrastructure
terraform plan

5️⃣ Apply Infrastructure
terraform apply


Type yes when prompted.

🧹 Cleanup (Destroy Resources)

To avoid AWS charges:

terraform destroy

🔐 Security Best Practices Followed

No AWS credentials committed to GitHub

.terraform/, *.tfstate, and *.tfvars ignored using .gitignore

Modular design for reusability

Security Groups scoped to minimum required access

📌 Use Cases

Learning Terraform and AWS networking

DevOps / Cloud portfolio project

Infrastructure as Code practice

Base infrastructure for future expansion (ALB, Auto Scaling, RDS)

🔮 Future Enhancements

Add Application Load Balancer (ALB)

Auto Scaling Group

Remote backend using S3 and DynamoDB

NAT Gateway for private subnets

CI/CD pipeline integration

👨‍💻 Author

Uddhav Hon

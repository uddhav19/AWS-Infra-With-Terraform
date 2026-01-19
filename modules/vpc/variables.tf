variable "availability_zone" {
    description = "The Availability Zone to create resources in"
    default     = "us-east-1a"
  
}
variable "vpc_cidr" {
    description = "The CIDR block for the VPC"
    default     = "10.0.0.0/16"
  
}
variable "subnet_cidr" {
description = "The CIDR block for the subnet"
default     = "10.0.1.0/24"
}

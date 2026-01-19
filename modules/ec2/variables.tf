variable "instance_type" {
description = "The EC2 instance type"
default     = "t2.micro"
}
variable "ami" {
description = "The AMI to use for the instance"
default     = "ami-07ff62358b87c7116"  # Update with your preferred AMI
}

variable "subnet_id" {
  description = "Subnet ID for EC2 instance"
  type        = string
}
variable "security_group_id" {
  description = "Security group ID for EC2 instance"
  type        = string
}

variable "key_pair_name" {
  description = "Key pair name for EC2 instance"
  type        = string
}


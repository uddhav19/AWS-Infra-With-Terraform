# vpc
resource "aws_vpc" "vpc_infra" {
    cidr_block = var.vpc_cidr

    tags = {
        Name = "main-infra"
    }
  
}

#subnet

resource "aws_subnet" "main_subnet" {
    vpc_id = aws_vpc.vpc_infra.id
    cidr_block = var.subnet_cidr
    availability_zone = var.availability_zone
    map_public_ip_on_launch = true

    tags = {
      Name= "main-subnet"
    }
  
}

# internet gateway
resource "aws_internet_gateway" "main_internet_gateway" {
    vpc_id = aws_vpc.vpc_infra.id

    tags={
        Name="main-igw"
    }  
}

#route table
resource "aws_route_table" "main_route_table" {
    vpc_id = aws_vpc.vpc_infra.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.main_internet_gateway.id
    }

    tags = {
        Name="main-route table"
    }
  
}

# route table association
resource "aws_route_table_association" "main_route_table_assocation" {
    subnet_id = aws_subnet.main_subnet.id
    route_table_id = aws_route_table.main_route_table.id

  
}
# security group
resource "aws_security_group" "main_security_group" {
    description = "allow ssh and http"
    vpc_id = aws_vpc.vpc_infra.id

    ingress  {
        description = "SSH access"
        from_port = 22
         to_port = 22
         protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    

    }

    ingress {
    description = "HTTP access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

   tags = {
    Name = "web-security-group"
  }
  
}
# key-pair - auto creating key pair
resource "tls_private_key" "key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "tf_key" {
  key_name   = "terraform-auto-key"
  public_key = tls_private_key.key.public_key_openssh
}


output "main_subnet_id" {
    value = aws_subnet.main_subnet.id
  
}

output "security_group_id" {
  description = "ID of the main security group"
  value       = aws_security_group.main_security_group.id
}

output "key_pair_name" {
  description = "EC2 key pair name"
  value       = aws_key_pair.tf_key.key_name
}

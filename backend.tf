terraform {
  backend "s3" {
    bucket = "my_bucket1234"
    key = "env/terraform-state"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "terraform-lock-table"   
    
  }
}
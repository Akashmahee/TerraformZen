resource "aws_dynamodb_table" "terraform_locks" {
  name         = "akash-terraform-lock-table" 
  billing_mode = "PAY_PER_REQUEST"             

  hash_key     = "LockID"                      # Strictly case-sensitive token 

  attribute {
    name = "LockID"                            
    type = "S"                                 
  }

  tags = {
    Name        = "Terraform-Remote-State-Lock-Registry"
    Environment = "Dev"
  }
}
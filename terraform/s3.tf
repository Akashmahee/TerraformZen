# # 1. Cloud Provider Setup configuration logic mapping
# # provider "aws" {
# #   region = "ap-south-1" # Mumbai data center
# # }

# # 2. Central Storage S3 Bucket Creation
# resource "aws_s3_bucket" "akash_secure_state_bucket" {
#   bucket        = "akash-company-devops-state-2026" # Global level-la absolute unique name
#   force_destroy = false                           # Production security data safety protection

#   tags = {
#     Name        = "Akash-Secure-State-Bucket"
#     Environment = "Dev"
#   }
# }

# # 3. Block All Public Access (Strict Security Shield Lock)
# resource "aws_s3_bucket_public_access_block" "block_public" {
#   bucket = aws_s3_bucket.akash_secure_state_bucket.id # Reference to our bucket ID

#   block_public_acls       = true
#   block_public_policy     = true
#   ignore_public_acls      = true
#   restrict_public_buckets = true

#   # Implicit chain execution dependency control rules
#   depends_on = [aws_s3_bucket.akash_secure_state_bucket]
# }

# provider "aws" {
#   region = "ap-south-1" 
# }

resource "aws_s3_bucket" "akash_secure_state_bucket" {
  bucket        = "akash-company-devops-state-2026" # Change if name already taken globally
  force_destroy = false                           

  tags = {
    Name        = "Akash-Secure-State-Bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_public_access_block" "block_public" {
  bucket = aws_s3_bucket.akash_secure_state_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true

  depends_on = [aws_s3_bucket.akash_secure_state_bucket]
}
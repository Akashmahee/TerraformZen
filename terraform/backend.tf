# terraform {
#   # Centralized remote cloud state integration setup
#   backend "s3" {
#     bucket         = "akash-company-devops-state-2026"  # Exact name reference matching S3 
#     key            = "dev/workspace/terraform.tfstate" # Path structure tracking location inside S3
#     region         = "ap-south-1"                       # Cloud region validation target
#     dynamodb_table = "akash-terraform-lock-table"      # Dynamic state locking table recognition 
#     encrypt        = true                               # Security layer parsing check activation
#   }
# }

terraform {
  # Modern multi-engineer cloud backend management standard
  backend "s3" {
    bucket       = "akash-company-devops-state-2026"  # Unga central S3 bucket name
    key          = "dev/workspace/terraform.tfstate" # Placement mapping logical path inside bucket
    region       = "ap-south-1"                       # Cloud region index
    encrypt      = true                               # Explicit security encryption
    
    # Modern approach - Replacing deprecated DynamoDB table strategy with native S3 lockfile shield
    use_lockfile = true                               
  }
}
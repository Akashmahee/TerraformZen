# # 1. Create the Restricted User Identity
# resource "aws_iam_user" "bucket_worker" {
#   name = "akash-bucket-worker"

#   tags = {
#     Purpose = "S3-State-Management"
#   }
# }

# # 2. Custom IAM Policy Generation (Read/Write Allowed, Delete Strictly Forbidden)
# resource "aws_iam_policy" "s3_restrictive_policy" {
#   name        = "AkashS3ReadWriteNoDeletePolicy"
#   description = "Provides read, write, and list permissions but explicitly denies delete operations on S3."

#   # jsonencode auto-converts this standard mapping to pure standard JSON format string
#   policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Sid      = "AllowListAndReadWriteBucket"
#         Effect   = "Allow"
#         Action   = [
#           "s3:ListBucket",         # Folder contents look mapping configuration allow
#           "s3:GetObject",          # Read file access metadata
#           "s3:PutObject",          # Write/Edit storage configuration updates tracking
#           "s3:GetBucketLocation"   # Base location mapping evaluation allow
#         ]
#         # Dynamically cross-references the bucket ARN created inside s3.tf file
#         Resource = [
#           "${aws_s3_bucket.akash_secure_state_bucket.arn}",
#           "${aws_s3_bucket.akash_secure_state_bucket.arn}/*"
#         ]
#       },
#       {
#         Sid      = "ExplicitDenyDeleteOperations"
#         Effect   = "Deny"          # Strict block exception parameter override rule
#         Action   = [
#           "s3:DeleteObject",       # Deletion attempts absolute validation failure crash
#           "s3:DeleteObjectVersion" # History logging version stack preservation tracking out
#         ]
#         Resource = "${aws_s3_bucket.akash_secure_state_bucket.arn}/*"
#       }
#     ]
#   })
# }

# # 3. Secure Attachment Link Matrix Connecting User & Policy
# resource "aws_iam_user_policy_attachment" "user_policy_attach" {
#   user       = aws_iam_user.bucket_worker.name
#   policy_arn = aws_iam_policy.s3_restrictive_policy.arn
# }
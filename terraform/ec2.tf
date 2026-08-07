# 1. Cloud Provider configuration endpoint matrix setup
provider "aws" {
  region = "ap-south-1" # Mumbai data center region setup
}

# # 2. Free-tier eligible EC2 compute resource build logic
# resource "aws_instance" "my_first_server" {
#   ami           = "ami-02b49a24cfb95941c" # Official Ubuntu 24.04 LTS x86_64 AMI ID
#   instance_type = "t2.micro"             # Free tier compute size

#   tags = {
#     Name = "Akash-EC2-TF-Server"
#   }
# }
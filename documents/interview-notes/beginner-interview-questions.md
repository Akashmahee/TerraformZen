# Q1. What is Terraform?

## Answer

Terraform is an Infrastructure as Code (IaC) tool developed by HashiCorp. It allows us to define cloud infrastructure using code instead of creating resources manually through the AWS Console.

Using Terraform, we can create, update, and delete infrastructure in a consistent and automated way.

## Why do companies use Terraform?

- Infrastructure automation
- Version control using Git
- Repeatable deployments
- Multi-cloud support
- Team collaboration

## Real-world Example

Instead of manually creating:

- EC2
- S3
- VPC
- IAM

in AWS Console every time,

we write Terraform code once.

Whenever we run:

```bash
terraform apply
```

Terraform creates the infrastructure automatically.

## Interview Tip

Don't say:

"Terraform is an automation tool."

Instead say:

"Terraform is an Infrastructure as Code tool that provisions and manages infrastructure declaratively."

### 🟦 WEEK 10 — Terraform Cloud, Teams, & Collaboration (Day 61–67)

### Day 61 — 23 Jan 2026
```bash
# Topic: 

Terraform Cloud Basics

# Duration: 

2 hrs

# Learn:

  Workspaces

  Remote backend

  Remote execution

# Hands-on:

  Create Terraform Cloud account

  Create workspace

  Connect GitHub repo

# Deliverable:

tfc/setup-notes.md
```
### Day 62 — 24 Jan 2026
```bash
# Topic: 

Terraform Cloud Variables & Secrets**

# Duration: 

2 hrs

# Learn:

Workspace variables

Sensitive variables

# Hands-on:

Move AWS access keys to Terraform Cloud variables.

# Deliverable:

tfc/variables.md
```
### Day 63 — 25 Jan 2026
```bash
# Topic: 

Terraform Sentinel (Policy as Code)**

# Duration: 

2 hrs

# Learn:

restrict instance types

enforce tagging

enforce S3 encryption

# Deliverable:

tfc/policy-examples.sentinel
```
### Day 64 — 26 Jan 2026
```bash
# Topic: 

Terraform Cloud VCS Integration**

# Duration: 

2 hrs

# Hands-on:

Push commit → auto-plan triggered via Terraform Cloud.

# Deliverable:

tfc/vcs-integration.md
```
### Day 65 — 27 Jan 2026
```bash
# Topic: 

Remote Operations & Access Control**

Duration: 1.5 hrs

# Learn:

access tokens

team permissions

# Deliverable:

tfc/teams-roles.md
```
### Day 66 — 28 Jan 2026
```bash
# Topic: 

Terraform Run Tasks (Security/Policy)**

# Duration: 

2 hrs

# Learn:

# Automate:

 security scans

 cost estimates

# Deliverable:

tfc/run-tasks-notes.md
```
### Day 67 — 29 Jan 2026
```bash
# Topic: 

Team Collaboration Scenarios**

# Duration: 

2 hrs

# Exercises:

Merge conflicts in .tf

Pull-request-based Terraform deployment

# Deliverable:

tfc/team-workflow.md
```
### 🟦 WEEK 11 — Multi-Account AWS Architecture (Day 68–74)

### Day 68 — 30 Jan 2026
```bash
# Topic: 

AWS Organizations + IAM Roles**

# Duration: 

2 hrs

# Learn:

 multi-account infra

 master account

 workload accounts

# Deliverable:

aws-org/structure.md
```
### Day 69 — 31 Jan 2026
```bash
# Topic: 

Cross-Account Terraform Assumed Roles**

# Duration:

2 hrs

# Deliverable:

Cross-account role switching using Terraform provider aliasing.
```
### Day 70 — 01 Feb 2026
```bash
# Topic: 

Multi-Account Remote State Management**

# Duration: 

2 hrs

# Deliverable:

One S3 bucket per account + DynamoDB lock setup.
```
### Day 71 — 02 Feb 2026
```bash
# Topic: 

Environment Promotion Strategy**

# Duration: 

1.5 hrs

# Learn:

How real companies promote infra:

dev → staging → prod

# Deliverable:

env/promotion-strategy.md
```
### Day 72 — 03 Feb 2026
```bash
Topic: 

Managing AWS Landing Zone with Terraform**

Duration: 

3 hrs

Deliverable:

Full multi-account scaffold.
```
### Day 73 — 04 Feb 2026
```bash
# Topic: 

Multi-account Projects using Modules**

# Duration: 

2 hrs

# Hands-on:

# Build:

 networking module

 security module

 compute module

# Deliverable:

modules/enterprise/
```
### Day 74 — 05 Feb 2026
```bash
# Topic: 

Multi-Account Final Lab**

# Duration: 

2.5 hrs

# Build:

 Parent AWS account

 Child AWS account

 Cross-account IAM role

 VPC deployed via assumed role

 # Deliverable:

 projects/senior/multi-account/
```
### 🟦 WEEK 12 — Terraform Advanced Design (Day 75–81)

### Day 75 — 06 Feb 2026
```bash

# Topic:

Terraform Code Architecture Patterns**

# Duration:

2 hrs

# Patterns:

monorepo

multi-repo

module monolith

# Deliverable:

architecture/patterns.md
```
### Day 76 — 07 Feb 2026
```bash
# Topic:

DRY Patterns (Don’t Repeat Yourself)**

# Duration:

2 hrs

Use locals, data sources, functions to reduce duplication.

# Deliverable:

best-practices/dry-examples.tf
```
### Day 77 — 08 Feb 2026
```bash
# Topic:

Data Sources Deep Dive**
# Duration:

 2 hrs

# Examples:

fetch existing VPC

fetch AMI

fetch IGW

# Deliverable:
data-sources/examples.tf
```
### Day 78 — 09 Feb 2026
```bash
# Topic: Event-driven Infra (Terraform + Lambda)**

# Duration: 2.5 hrs

# Deliverable:

Terraform triggers → notify Slack / Email
```
### Day 79 — 10 Feb 2026
```bash
Topic:

Complex Module Outputs**

Duration:

2 hrs

Deliverable:

modules/enterprise/outputs.tf
```
### Day 80 — 11 Feb 2026
```bash

# Topic:

Refactoring Legacy Terraform**

# Duration:

2 hrs

# Deliverable:

Refactor messy code into professional structure.
```
### Day 81 — 12 Feb 2026
```bash
# Topic:

Advanced Project (Part 1)**

# Duration:

3 hrs

# Build:

VPC

3-tier network

ALB

ASG

# Deliverable:

projects/senior/refactored-arch/
```
### 🟦 WEEK 13 — CI/CD + Full Production Deployment (Day 82–88)

### Day 82 — 13 Feb 2026
```bash
# Topic: 

Terraform + GitHub Actions CI/CD**

# Duration: 

2.5 hrs

# Deliverable:

.github/workflows/terraform.yml
```
### Day 83 — 14 Feb 2026
```bash
# Topic: 

Terraform Plan in Pull Request**

# Duration: 

2 hrs

# Deliverable:

terraform-plan-output.md
```
### Day 84 — 15 Feb 2026
```bash
# Topic: 

Auto-Apply for Dev, Manual Approval for Prod**

# Duration: 

2 hrs

# Deliverable:

Pipeline with approvals.
```
### Day 85 — 16 Feb 2026
```bash
# Topic: 

Security Scans (Checkov, tfsec)**

# Duration: 

1.5 hrs

# Deliverable:

security/security-report.md
```
### Day 86 — 17 Feb 2026
```bash
# Topic: 

Cost Estimation with Infracost**

# Duration: 

2 hrs

# Deliverable:

cost/estimate-output.md
```
### Day 87 — 18 Feb 2026
```bash
# Topic: 

Continuous Deployment for Terraform Modules**

# Duration: 

2 hrs

# Deliverable:

Automated module versioning.
```
### Day 88 — 19 Feb 2026
```bash
# Topic: 

Senior CI/CD Project**

# Duration: 

2.5 hrs

# Deliverable:

End-to-end infra pipeline.
```
### 🟦 WEEK 14 — FINAL SENIOR PROJECT (Day 89–90)

### Day 89 — 20 Feb 2026
```bash
# Topic: 

Full Production Infrastructure Deployment**

# Duration: 

3 hrs

# Architecture:

3-tier VPC

Multi-AZ

ALB

ASG

RDS

Redis

CloudFront

S3

IAM roles

Terraform Cloud backend

CI/CD deployment pipeline

# Deliverable:

projects/senior/final-prod-infra/
```
### Day 90 — 21 Feb 2026
```bash
# Topic: 

Senior-Level Exam

Duration: 3 hrs

# You must:

design architecture

estimate cost

deploy modules

use CI/CD

submit documentation

# Deliverables:

 senior-final/
 design-diagram.png

 architecture-explanation.md
```

### 🟦 WEEK 10 — Terraform Cloud, Teams, & Collaboration (Day 61–67)

Day 61 — 23 Jan 2026

Topic: 

Terraform Cloud Basics

Duration: 

2 hrs

Learn:

  Workspaces

  Remote backend

  Remote execution

Hands-on:

  Create Terraform Cloud account

  Create workspace

  Connect GitHub repo

Deliverable:

tfc/setup-notes.md

Day 62 — 24 Jan 2026

Topic: 

Terraform Cloud Variables & Secrets**

Duration: 

2 hrs

Learn:

Workspace variables

Sensitive variables

Hands-on:

Move AWS access keys to Terraform Cloud variables.

Deliverable:

tfc/variables.md

Day 63 — 25 Jan 2026

Topic: 

Terraform Sentinel (Policy as Code)**

Duration: 

2 hrs

Learn:

restrict instance types

enforce tagging

enforce S3 encryption

Deliverable:

tfc/policy-examples.sentinel

Day 64 — 26 Jan 2026

Topic: 

Terraform Cloud VCS Integration**

Duration: 

2 hrs

Hands-on:

Push commit → auto-plan triggered via Terraform Cloud.

Deliverable:

tfc/vcs-integration.md

Day 65 — 27 Jan 2026

Topic: 

Remote Operations & Access Control**

Duration: 1.5 hrs

Learn:

access tokens

team permissions

Deliverable:

tfc/teams-roles.md

Day 66 — 28 Jan 2026

Topic: 

Terraform Run Tasks (Security/Policy)**

Duration: 2 hrs

Learn:

Automate:

 security scans

 cost estimates

Deliverable:

tfc/run-tasks-notes.md

Day 67 — 29 Jan 2026

Topic: 

Team Collaboration Scenarios**

Duration: 

2 hrs

Exercises:

Merge conflicts in .tf

Pull-request-based Terraform deployment

Deliverable:

tfc/team-workflow.md

### 🟦 WEEK 11 — Multi-Account AWS Architecture (Day 68–74)

Day 68 — 30 Jan 2026

Topic: AWS Organizations + IAM Roles**
Duration: 2 hrs
Learn:

multi-account infra

master account

workload accounts

Deliverable:
aws-org/structure.md

Day 69 — 31 Jan 2026

Topic: Cross-Account Terraform Assumed Roles**
Duration: 2 hrs
Deliverable:
Cross-account role switching using Terraform provider aliasing.

Day 70 — 01 Feb 2026

Topic: Multi-Account Remote State Management**
Duration: 2 hrs
Deliverable:
One S3 bucket per account + DynamoDB lock setup.

Day 71 — 02 Feb 2026

Topic: Environment Promotion Strategy**
Duration: 1.5 hrs
Learn:
How real companies promote infra:

dev → staging → prod

Deliverable:
env/promotion-strategy.md

Day 72 — 03 Feb 2026

Topic: Managing AWS Landing Zone with Terraform**
Duration: 3 hrs
Deliverable:
Full multi-account scaffold.

Day 73 — 04 Feb 2026

Topic: Multi-account Projects using Modules**
Duration: 2 hrs
Hands-on:
Build:

networking module

security module

compute module

Deliverable:
modules/enterprise/

Day 74 — 05 Feb 2026

Topic: Multi-Account Final Lab**
Duration: 2.5 hrs
Build:

Parent AWS account

Child AWS account

Cross-account IAM role

VPC deployed via assumed role

Deliverable:
projects/senior/multi-account/
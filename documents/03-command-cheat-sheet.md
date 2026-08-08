# 🟦 1. GENERAL INFORMATION

## 1️⃣ terraform -help

### Detailed Explanation:

Shows all Terraform commands and how to use them.
**Real-life example:** Like getting a full menu when you enter a restaurant.

Example:
```bash
terraform -help
```

Result:
List of all Terraform commands.

## 2️⃣ terraform version

### Detailed Explanation:
Shows the Terraform version you installed.
**Real-life example:** Checking which mobile OS version your phone uses.

Example:
```bash
terraform version
```

Result:
Terraform v1.x.x


# 🟦 2. CODE CLEANUP & VALIDATION

## 3️⃣ terraform fmt

### Detailed Explanation:
Fixes spacing, alignment, indentation of .tf files.
**Real-life example:** Auto-formatting a Word document so it looks clean.

Example:
```bash
terraform fmt
```

Result:
Your .tf files become neatly formatted.

## 4️⃣ terraform validate

### Detailed Explanation:
Checks if Terraform code is valid (syntax + structure).
**Real-life example:** Grammar checker for Terraform code.

Example:
```bash
terraform validate
```

Result:
“Configuration is valid” or error messages.


# 🟦 3. INITIALIZATION

## 5️⃣ terraform init

### Detailed Explanation:
Prepares Terraform project by downloading providers (AWS, Azure, etc.).
**Real-life example:** Before cooking, you buy all ingredients.

Example:
```bash
terraform init
```

Result:
AWS provider downloaded and project is ready.

## 6️⃣ terraform get

### Detailed Explanation:
Downloads or updates Terraform modules your project uses.
**Real-life example:** Downloading “add-ons” or “plugins” for a game.

Example:
```bash
terraform get
```

Result:
Modules added or updated.

# 🟦 4. PLAN & APPLY (MAIN WORKFLOW)
## 7️⃣ terraform plan

### Detailed Explanation:
Shows what Terraform WILL do before doing anything.
**Real-life example:** Contractor shows plan before construction starts.

Example:
```bash
terraform plan
```

Result:
Terraform prints:

+ resources to add
~ resources to change
- resources to delete

## 8️⃣ terraform apply

### Detailed Explanation:
Executes the plan → actually creates/updates/destroys infrastructure on AWS.
**Real-life example:** Builder starts constructing your house based on blueprint.

Example:
```bash
terraform apply
```

Result:
AWS resources get created/updated.

## 9️⃣ terraform destroy

### Detailed Explanation:
Deletes all resources Terraform created.
**Real-life example:** Telling contractor to demolish the entire building.

Example:
```bash
terraform destroy
```

Result:
All Terraform-managed AWS resources are removed.

# 🟦 5. RESOURCE RE-CREATION CONTROL
## 🔟 terraform taint

### Detailed Explanation:
Forces Terraform to recreate a resource even if it’s working.
**Real-life example:** “Replace my working phone with a brand new one.”

Example:
```bash
terraform taint aws_instance.myServer
terraform apply
```

Result:
Terraform destroys EC2 and creates a new one.

## 1️⃣1️⃣ terraform untaint

### Detailed Explanation:
Removes taint so Terraform does NOT recreate the resource.
**Real-life example:** You tell the mechanic “Actually don’t replace this part.”

Example:
```bash
terraform untaint aws_instance.myServer
```

Result:
Resource stays as-is.

# 🟦 6. STATE MANAGEMENT (VERY IMPORTANT)
## 1️⃣2️⃣ terraform show

### Detailed Explanation:
Shows state or plan details in readable format.
**Real-life example:** Viewing your bank statement to see all transactions.

Example:
```bash
terraform show
```

Result:
Shows all resource details.

## 1️⃣3️⃣ terraform refresh

### Detailed Explanation:
Updates Terraform state file with real AWS values.
**Real-life example:** Refreshing your bank balance to show the latest numbers.

Example:
```bash
terraform refresh
```

Result:
State file updated with real resource info.

## 1️⃣4️⃣ terraform state list

### Detailed Explanation:
Shows all resources Terraform is currently managing.
**Real-life example:** List of all items a shop has in inventory.

Example:
```bash
terraform state list
```

Result:

aws_instance.myServer
aws_s3_bucket.myBucket

## 1️⃣5️⃣ terraform state show

### Detailed Explanation:
Shows full details of a specific resource.
**Real-life example:** Inspecting a single item in inventory.

Example:
```bash
terraform state show aws_instance.myServer
```

Result:
Full attributes of the EC2 instance.

## 1️⃣6️⃣ terraform state rm

### Detailed Explanation:
Removes a resource from state WITHOUT deleting it in AWS.
**Real-life example:** Removing an item from inventory list, but keeping the item in the warehouse.

Example:
```bash
terraform state rm aws_instance.myServer
```

Result:
Terraform forgets the resource.

## 1️⃣7️⃣ terraform state mv

### Detailed Explanation:
Renames or moves a resource inside state.
**Real-life example:** Moving an item from one shelf to another in your warehouse system.

Example:
```bash
terraform state mv aws_instance.old aws_instance.new
```

Result:
State file updated with new name.

# 🟦 7. IMPORT EXISTING RESOURCES
## 1️⃣8️⃣ terraform import

### Detailed Explanation:
Adds an existing AWS resource into Terraform’s control.
**Real-life example:** Adding an already-owned car to your service history records.

Example:
```bash
terraform import aws_s3_bucket.myBucket demo-bucket-123
```

Result:
Terraform starts managing that S3 bucket.

# 🟦 8. OUTPUT & INTERACTIVE UTILITIES
## 1️⃣9️⃣ terraform output

### Detailed Explanation:
Shows values defined in output {} blocks.
**Real-life example:** Printing the final bill after shopping.

Example:
```bash
terraform output server_ip
```

Result:
Shows EC2’s public IP.

## 2️⃣0️⃣ terraform console

### Detailed Explanation:
Opens an interactive shell to test Terraform expressions.
**Real-life example:** Calculator mode for Terraform.

Example:
```bash
terraform console
> 1+2
```

Result:
3

# 🟦 9. PROVIDERS & WORKSPACES

## 2️⃣1️⃣ terraform providers

### Detailed Explanation:
Shows all providers being used in your project.
**Real-life example:** Listing all brands of tools you’re using.

Example:
```bash
terraform providers
```

Result:
AWS, random, TLS, etc.

## 2️⃣2️⃣ terraform workspace list

### Detailed Explanation:
Shows all workspaces (separate state files).
**Real-life example:** Having separate notebooks for school subjects.

Example:
```bash
terraform workspace list
```

Result:

default
dev
prod

## 2️⃣3️⃣ terraform workspace new

### Detailed Explanation:
Creates a new workspace (new environment).
**Real-life example:** Creating a new notebook for a new subject.

Example:
```bash
terraform workspace new staging
```

Result:
New workspace created.

## 2️⃣4️⃣ terraform workspace select

### Detailed Explanation:
Switches to another workspace.
**Real-life example:** Switching to a different notebook.

Example:
```bash
terraform workspace select prod
```

Result:
Terraform now uses prod state.

# 🟦 10. DEBUGGING / EXTRA UTILITIES

## 2️⃣5️⃣ terraform graph

### Detailed Explanation:
Generates diagram of resource dependencies.
**Real-life example:** A map showing how all rooms in a building connect.

Example:
```bash
terraform graph
```

Result:
Outputs .dot graph file.

## 2️⃣6️⃣ terraform force-unlock

### Detailed Explanation:
Unlocks stuck state file lock.
**Real-life example:** Forcing open a locker when the key gets stuck.

Example:
```bash
terraform force-unlock 892338d9
```

Result:
State lock removed.

## 2️⃣7️⃣ terraform -install-autocomplete

### Detailed Explanation:
Enables auto-complete for Terraform commands.
**Real-life example:** Your phone suggests words automatically.

Example:
```bash
terraform -install-autocomplete
```

Result:
Tab auto-complete enabled.

## 2️⃣8️⃣ terraform -chdir

### Detailed Explanation:
Runs Terraform inside another folder.
**Real-life example:** Telling a worker, “Do the work in that room, not this room.”

Example:
```bash
terraform -chdir=prod apply
```

Result:
Terraform applies config from prod directory.

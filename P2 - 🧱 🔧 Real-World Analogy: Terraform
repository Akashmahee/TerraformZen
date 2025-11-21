Imagine building a house.

### Without Terraform (Traditional way)

```bash
You:
* go to the land
* buy bricks
* mix cement
* install windows
* lay tiles

#### Everything by hand → slow, tiring, mistakes happen.

#### This is like clicking around the AWS console manually.

```
### With Terraform
```bash
You:

### Write a blueprint:

“I want a 2-bedroom house, 1 kitchen, white walls, brown door.”

* Give that blueprint to a robot builder.

* Robot builds the house exactly as written.

* If you change the blueprint:

* remove “one bedroom” → robot demolishes that bedroom.

* add “balcony” → robot adds a balcony.

* change “brown door → black door” → robot replaces it.

* This is Terraform.

#### Write blueprint → Terraform applies it → Infra is created/updated/destroyed.
```

### 🔥 Example with AWS (Realistic)

#### Without Terraform:

```bash 
To create an EC2 instance, you manually:

choose AMI

choose instance type

create key pair

set up security group

click launch

This takes time, and you may click wrong options.

```

#### With Terraform:

You write this blueprint:

```bash
resource "aws_instance" "myServer" {
  ami           = "ami-0f8ca728008ff5af4"
  instance_type = "t2.micro"
}
```
### Terraform sees this and says:

“User wants one EC2”

Creates it automatically.


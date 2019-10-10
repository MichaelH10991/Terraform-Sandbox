# Terraform Sandbox

1. install terraform, should be pretty streightforward.
2. set up awscli by running `brew install awscli`
3. run `aws configure` and enter your creds found [here](https://console.aws.amazon.com/iam/home?#/security_credentials)
4. There is a deploy script which checks caller identity prior to deploying. run `cd utils/ && bash deploy.sh`

## Commands

- `terraform init`
- `terraform plan`
- `terraform version`
- `terraform apply`
- `terraform destroy`

From [hashicorp.com](https://learn.hashicorp.com/terraform/getting-started/build)

## `terraform init`

*The first command to run for a new configuration -- or after checking out an existing configuration from version control -- is* `terraform init`*, which initializes various local settings and data that will be used by subsequent commands. The* `terraform init` *command will automatically download and install any Provider binary for the providers in use within the configuration, which in this case is just the aws provider*

## `terraform apply`

Run `terraform apply`. What is outputted is the execution plan, this descirbes what actions terraform will make to create infrastructure. The output is basically a diff of what currently exists and what will be created.

*If the plan was created successfully, Terraform will now pause and wait for approval before proceeding. If anything in the plan seems incorrect or dangerous, it is safe to abort here with no changes made to your infrastructure. In this case the plan looks acceptable, so type* `yes` *at the confirmation prompt to proceed.*

## terraform.tfstate

*Terraform also wrote some data into the terraform.tfstate file. This state file is extremely important; it keeps track of the IDs of created resources so that Terraform knows what it is managing. This file must be saved and distributed to anyone who might run Terraform. It is generally recommended to setup remote state when working with Terraform, to share the state automatically, but this is not necessary for simple situations like this Getting Started guide.*

You can inspect the current state using `terraform show`
# Terraform Sandbox

1. install terraform, should be pretty streightforward.
2. set up awscli by running `brew install awscli`
3. run `aws configure` and enter your creds found [here](https://console.aws.amazon.com/iam/home?#/security_credentials)
4. There is a deploy script which checks caller identity prior to deploying. run `cd utils/ && bash deploy.sh`

## You can configure a profile

1. add the creds to your profile file at `~/.aws/config`

```bash
[profile personal]
aws_access_key_id = THE_ID
aws_secret_access_key = THE_KEY
region = eu-west-1
output = json
```

2. `aws configure --profile personal`

3. run aws commands `aws s3 ls --profile personal`

## Commands

- `terraform init`
- `terraform plan`
- `terraform version`
- `terraform apply`
- `terraform destroy`

From [hashicorp.com](https://learn.hashicorp.com/terraform/getting-started/build)

## `terraform init`

_The first command to run for a new configuration -- or after checking out an existing configuration from version control -- is_ `terraform init`_, which initializes various local settings and data that will be used by subsequent commands. The_ `terraform init` _command will automatically download and install any Provider binary for the providers in use within the configuration, which in this case is just the aws provider_

## `terraform apply`

Run `terraform apply`. What is outputted is the execution plan, this descirbes what actions terraform will make to create infrastructure. The output is basically a diff of what currently exists and what will be created.

_If the plan was created successfully, Terraform will now pause and wait for approval before proceeding. If anything in the plan seems incorrect or dangerous, it is safe to abort here with no changes made to your infrastructure. In this case the plan looks acceptable, so type_ `yes` _at the confirmation prompt to proceed._

## terraform.tfstate

_Terraform also wrote some data into the terraform.tfstate file. This state file is extremely important; it keeps track of the IDs of created resources so that Terraform knows what it is managing. This file must be saved and distributed to anyone who might run Terraform. It is generally recommended to setup remote state when working with Terraform, to share the state automatically, but this is not necessary for simple situations like this Getting Started guide._

You can inspect the current state using `terraform show`

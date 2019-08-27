# Terraform Sandbox

1. install terraform, should be pretty streightforward.
2. set up awscli by running `brew install awscli`
3. run `aws configure` and enter your creds found [here](https://console.aws.amazon.com/iam/home?#/security_credentials)
4. 

## Commands

- `terraform init`
- `terraform plan`
- `terraform version`
- `terraform apply`
- `terraform destroy`

From [hashicorp.com](https://learn.hashicorp.com/terraform/getting-started/build)

*The first command to run for a new configuration -- or after checking out an existing configuration from version control -- is `terraform init`, which initializes various local settings and data that will be used by subsequent commands. The `terraform init` command will automatically download and install any Provider binary for the providers in use within the configuration, which in this case is just the aws provider*




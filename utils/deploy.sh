#!bin/bash
aws sts get-caller-identity
bash build.sh
cd ../terraform
terraform init
terraform apply
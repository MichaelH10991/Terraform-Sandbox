#!bin/bash
RED='\033[0;31m'
WHITE='\e[39m'
aws sts get-caller-identity
echo -e "${RED}*** listing buckets ***${WHITE}"
aws s3 ls
bash build.sh
cd ../terraform
terraform init
terraform apply
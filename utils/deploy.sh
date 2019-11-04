#!bin/bash
RED='\033[0;31m'
WHITE='\e[39m'
echo -e "${RED}*** getting caller identity ***${WHITE}"
aws sts get-caller-identity
echo -e "${RED}*** listing buckets ***${WHITE}"
aws s3 ls
echo -e "${RED}*** building lambda ***${WHITE}"
bash build.sh
cd ../terraform
echo -e "${RED}*** initializing terraform ***${WHITE}"
terraform init
echo -e "${RED}*** deploying infrastructure ***${WHITE}"
terraform apply
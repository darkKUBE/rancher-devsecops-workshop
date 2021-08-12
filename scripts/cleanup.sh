#! /bin/bash

export AWS_REGION=ap-southeast-1

function delete-vm() {
  aws lightsail delete-instance \
    --region $AWS_REGION \
    --instance-name $1 \
    --output table --no-cli-pager
}

delete-vm demo-rancher
delete-vm demo-harbor
delete-vm demo-devsecops-m1 
delete-vm demo-devsecops-w1
delete-vm demo-devsecops-w2
delete-vm demo-devsecops-w3
delete-vm demo-cluster1
delete-vm demo-cluster2


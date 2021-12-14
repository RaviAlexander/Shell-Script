#! /bin/bash -ex

#Env=$1

yum install -y git*

#yum install -y httpd*
sudo su - << EOF
yum install -y yum-utils
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
yum -y install terraform
EOF

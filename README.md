
![Texte
   alternatif](https://upload.wikimedia.org/wikipedia/commons/0/04/Terraform_Logo.svg)

## This repository contains the projects and exercises that I was able to perform on Terraform during my training at Eazytraining

## :file_folder: TP2 :file_folder:

The goal of this exercise is to deploy a virtual machine in AWS in the us-east-1 region with the following Centos7 image: ami-00e87074e52e6c9f9.
We will first need to retrieve our acces key and secret key from our account and create an EC2 key pair (called devops-vincent).
Finally we will add a tag "ec2-vincent" to our instance, .

The code to achieve the goal is put in the ec2.tf file

## :file_folder: TP3 :file_folder:

We deploy an ec2 instance with a public ip and a security group (we open ports 80 and 443).
Our ec2 deployment will be dynamic, we will have a variabilized size (the default value is t2.nano) and a variabilized tag (ec2-vincent). Theses informations are in the variables.tf file.
Finally, we will override in the terraform.tfvars file, the value of the size of the instance (t2.micro)

## :file_folder: TP4 :file_folder:

We get the ec2.tf file from TP3 and modify it to install nginx on our VM.
We will need to modify our security group to allow ingress ssh traffic and egress traffic.
Also we will get the ip, id and availability zone of our VM that we will put in the infos_ec2.txt file.
in this exercise, we use local and remote terraform provisioners.


## :file_folder: TP5 :file_folder:

From TP4, we will modify our ec2.tf file to make an AWS remote S3 with a bucket called terraform-backend-vincent, in order to store the tfstate file.

## :file_folder: TP6 :file_folder:

We create a module "ec2module" in order to deploy our instance in the same way we do before (with a public ip and a security group).
Then, we will create 2 repositories ("prod" and "dev") each with a main.tf file using the ec2module created before.

For the main.tf file in the dev repository, values will be overloaded as following :
"instancetype" set to "t2.nano", aws_common_tag set to "ec2-dev-vincent" and "sg_name" set to "dev-vincent-sg"

For the main.tf file in the prod directory, values will be overloaded as following :
"instancetype" set to "t2.micro", aws_common_tag set to "ec2-prod-vincent" and "sg_name" set to "prod-vincent-sg"

## :file_folder: Mini-projet :file_folder:
Here we will deploy a complete infrastructure.

We will write 4 modules :

- an ec2 module to deploy an instance which use the last ubuntu bionic version
- an ebs module to create a volume with a variabilized size
- a module for a public ip
- a sg module for a security group

We will create a repository called "app" which will use the 4 modules in order to deploy the ec2 instance.

Of course we are going to variabilize our values and overload the variables in order to make the application more dynamic.

We install nginx and register the public ip in a file named ip_ec2.txt

This project highlights the importance of the outputs.

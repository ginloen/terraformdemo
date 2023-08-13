variable "aws_region" {
    description = "Default AWS Region for resources"
    default = "us-west-2"
}

variable "instance_type" {
    description = "Default instance type"
    default = "t2.micro"
}

variable "key_name" {
    description = "Default key pair for EC2"
    default = "terraformdemo"
}

variable "ec2_private_key" {
    description = "Default private key to connect remote EC2"
    default = ""
}

variable "AWS_ACCESS_KEY_ID" {
    description = "AWS access key id"
    default = ""
}

variable "AWS_SECRET_ACCESS_KEY" {
    description = "AWS access key secret"
    default = ""
}

variable "security_group" {
    description = "Default security group"
    default = "allowhttp"
}

variable "ami_id" {
    description = "Default Amazon Linux AMI ID"
    default = "ami-04e35eeae7a7c5883"
}

variable "tagvalue" {
    description = "Default tag value"
    default = "myportfolio"
}
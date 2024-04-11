variable "provider_source" {
  type        = string
  description = "Terraform Provider Source information"
  default     = "hashicorp/aws"
}
variable "provider_version" {
  type        = string
  description = "Terraform version information"
  default     = "5.37.0"
}
variable "aws_region" {
  type    = string
  default = "us-east-1"
}
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
variable "vpc_name" {
  type    = string
  default = "vpc_demoiac"
}
variable "environment_name" {
  type    = string
  default = "Demo_Environment"
}
/* variable "vpc_security_group_name" {
  type = string
  default = "My VPC Security Group"  
} */

variable "terraform_flag" {
  type    = bool
  default = true
}
variable "private_subnets" {
  default = {
    "private_subnet_1" = 1
    "private_subnet_2" = 2
    "private_subnet_3" = 3
  }
}

variable "public_subnets" {
  default = {
    "public_subnet_1" = 1
    "public_subnet_2" = 2
    "public_subnet_3" = 3
  }
}
variable "public_route_table_name" {
  type    = string
  default = "iac_public_rtb"
}
variable "private_route_table_name" {
  type    = string
  default = "iac_private_rtb"
}
variable "internet_gateway_name" {
  type    = string
  default = "iac_igw"
}
variable "nat_gateway_name" {
  type    = string
  default = "iac_nat_gateway"

}
variable "web_server_name" {
  type    = string
  default = "Ubuntu EC2 Server"
}
variable "heading_one" {
  type = string
  default = "Ravi Sivaji"
}
variable "aws_key_name" {
  type    = string
  default = "Sivaji"
}
variable "aws_instance_type" {
  type    = string
  default = "t2.micro"
}
variable "ingressCIDRblock" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}

variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "username" {
  type        = string
  description = "The username for the local account that will be created on the new VM."
  default     = "azureadmin"
}

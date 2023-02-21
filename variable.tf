# Vpc variables
variable "vpc_cidr" {
  default     = "10.1.0.0/16"
  description = "vpc cidr block"
  type        = string
}

variable "public_subnet_az1_cidr" {
  default     = "10.1.0.0/24"
  description = "public subnet az1 cidr block"
  type        = string
}

variable "public_subnet_az2_cidr" {
  default     = "10.1.1.0/24"
  description = "public subnet az1 cidr block"
  type        = string
}

variable "private_app_subnet_az1_cidr" {
  default     = "10.1.2.0/24"
  description = "private app subnet az1 cidr block"
  type        = string
}

variable "private_app_subnet_az2_cidr" {
  default     = "10.1.3.0/24"
  description = "private app subnet az2 cidr block"
  type        = string
}

# Security group variables
variable "ssh_location" {
  default     = "0.0.0.0/0"
  description = "the ip address that can shh into the ec2"
  type        = string
}

# Auto scaling grop variables
variable "launch_template_name" {
  default     = "dev-launch-template"
  description = "name of launch template"
  type        = string
}

variable "ec2_image_id" {
  default     = "ami-0dfcb1ef8550277af"
  description = "id of the ami"
  type        = string
}

variable "ec2_instance_type" {
  default     = "t2.micro"
  description = "the ec2 instance type"
  type        = string
}

variable "ec2_key_pair_name" {
  default     = "key2"
  description = "name of instance key pair"
  type        = string
}
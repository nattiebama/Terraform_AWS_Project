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
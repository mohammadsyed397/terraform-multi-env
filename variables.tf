
variable "project" {
  default = "roboshop"
}

variable "environment" {
}

variable "component" {
  default = "cart"
}
variable "common_tags" {
  default = {
    Project   = "roboshop"
    Terraform = true
  }
}
variable "ec2_tags" {
  type = map(string)
  default = {
    Name    = "Roboshop"
    Purpose = "Variables-demo"
  }
}

variable "sg_name" {
  default = "allow-all"
}

variable "sg_description" {
  default = "allowing all ports from all IP"
}

variable "instances" {
  default = ["mongodb", "redis"]
}

variable "from_port" {
    default = 0
}

variable "to_port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list(string)
    default =  ["0.0.0.0/0"]
}

variable "instance_type" {
  
}

variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "AMI ID of roboshop RHEL9"
}

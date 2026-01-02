variable "region" {
  description = "AWS region"
}

variable "ami_id" {
  description = "AMI ID for EC2"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "volume_size" {
  description = "Root EBS volume size"
}

variable "security_group_ids" {
  description = "Security groups for EC2"
  type        = list(string)
}

variable "ec2_subnet_id" {
  description = "Subnet ID for EC2 instance"
  type        = string
}

variable "alb_subnet_ids" {
  description = "Subnet IDs for ALB"
  type        = list(string)
}

variable "alb_sg" {
  description = "Security groups for ALB"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID"
}

variable "environment" {
  description = "Environment name (dev/uat/prod)"
}

variable "owner" {
  description = "Owner tag"
}

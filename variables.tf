variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDRs"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}


# Instance Variables ########################################

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "EC2 instance type"
}

variable "key_name" {
  type        = string
  default     = null
  description = "Optional EC2 key pair name (leave null to enforce zero SSH)"
}


# Add a variable for desired capacity ##################################

variable "desired_capacity" {
  type        = number
  default     = 2
  description = "Desired number of instances in the Auto Scaling Group"
}

variable "min_size" {
  type        = number
  default     = 1
  description = "Minimum number of instances"
}

variable "max_size" {
  type        = number
  default     = 3
  description = "Maximum number of instances"
}

# S3 bucket Variables ############################################

variable "artifact_bucket_name" {
  description = "S3 bucket for deployment artifacts (must be globally unique)"
  type        = string
}

# S3 UserData #######################################

variable "app_version" {
  description = "App release version (use commit SHA)"
  type        = string
  default     = "bootstrap"
}

# variables.tf
variable "bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
}

variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "ap-south-1"
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default = {
    Project     = "agentic-devops-portfolio"
    ManagedBy   = "terraform"
    DeployedVia = "claude-code"
  }
}

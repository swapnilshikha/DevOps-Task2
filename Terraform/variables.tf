variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Prefix for all resource names"
  type        = string
  default     = "myDevopsProject"
}

variable "connection_arn" {
  description = "CodeStar connection ARN for GitHub"
  type        = string
  default     = "arn:aws:codeconnections:ap-south-1:460351657409:connection/2417f2f3-f71a-4fef-b011-70eff8410461"
}

variable "repo_fullname" {
  description = "GitHub repository in format owner/repo"
  type        = string
  default     = "swapnilshikha/DevOps-Task2"
}

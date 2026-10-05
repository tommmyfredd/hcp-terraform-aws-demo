terraform {
  required_version = ">= 1.5.0"

  # No backend block: HCP Terraform manages state for VCS-driven workspaces.

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

# No credentials here. Authentication comes from the workspace's
# TFC_AWS_PROVIDER_AUTH and TFC_AWS_RUN_ROLE_ARN environment variables.
provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = var.project_name
      Environment = var.environment
      ManagedBy   = "terraform"
    }
  }
}

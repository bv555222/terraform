terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.58.0"
    }

  }
  
    backend "s3" {
    bucket = "state-file-devops"
    key    = "remote-statefile"
    region = "us-east-1"
    #dynamodb_table = "terraform-state-lock"
    encrypt = true
    use_lockfile = true
    
  }
}

provider "aws" {
  # Configuration options
}
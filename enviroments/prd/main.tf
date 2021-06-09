terraform {
  required_version = "1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "db_member" {
  source = "../../schemas/member"
}

module "table_members" {
  source = "../../schemas/member/members"
}

module "table_memberprofile" {
  source = "../../schemas/member/memberprofile"
}


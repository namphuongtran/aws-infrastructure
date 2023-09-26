terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.16.2"#"~> 4.16"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.16.1"
    }
  }

  required_version = ">= 1.2.0"
}
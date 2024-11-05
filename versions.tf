terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.72"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.10"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.4.1"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.14"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.1"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.1"
    }
  }

  backend "s3" {
    bucket = "tf-state-1001"
    region = "us-west-2"
    key    = "k8s-chatbot/terraform.tfstate"
  }
}

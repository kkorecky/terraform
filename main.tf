terraform {
    required_providers {
        github = {
            source = "integrations/github"
            version = "4.6.0"
        }
    }
}

provider "aws" {
    region = "us-east-1" 
    access_key = "AKIA2UC3FS2BBP6WVP3G"
    secret_key = "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"
}

resource "aws_instance" "my_ec2" {
    ami = "ami-0e001c9271cf7f3b9"
    instance_type = "t2.micro"
}

provider "github" {
    token = "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"
}

resource "github_repository" "terraform" {
    name = "Terraform-Repo"
    visibility = "public"
}



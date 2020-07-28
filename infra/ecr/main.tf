# ecr

terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_ecr_repository" "repo" {
  name                 = "seoul-mss-soc1-ecr"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}


output "name" {
  value = aws_ecr_repository.repo.name
}

output "repository_url" {
  value = aws_ecr_repository.repo.repository_url
}
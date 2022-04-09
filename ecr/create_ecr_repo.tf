terraform{
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version ="~> 3.27"
        }
    }

    required_version = ">=0.14.9"
}

provider "aws" {
  profile = "default"
  region = "ap-south-1"
}


resource "aws_ecr_repository" "stock-finch-ecr" {
  name = "sf-repo"
  image_tag_mutability = "IMMUTABLE"
}

resource "aws_ecr_repository_policy" "sf-repo-policy" {
    repository = aws_ecr_repository.stock-finch-ecr.name
    policy = {
        "Version": "2008-10-17",
        "Statement": [
            {
                "Sid": "ECR Repository Policy",
                "Effect": "Allow",
                "Principal": "*",
                "Action": ["ecr:DescribeImages",
                        "ecr:DescribeRepositories"]
            }]
        }
}
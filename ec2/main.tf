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

resource "aws_instance" "app_server"{
    ami = "ami-0851b76e8b1bce90b"
    instance_type = "t2.micro"
    vpc = "vpc-037800a0f6733d801"
   

    tags = {
        Name = "TestingTerraFormInstacness"
    }
}

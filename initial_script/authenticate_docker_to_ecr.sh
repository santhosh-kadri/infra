# To have ECR & Docker working, we have to authenticate Docker to Amazons ECR. First, collect the region and aws_account_id. use the command below to authenticate Docker to ECR
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 446504582926.dkr.ecr.ap-south-1.amazonaws.com

# password is stored in : /root/.docker/config.json
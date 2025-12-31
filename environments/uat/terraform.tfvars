region             = "us-east-1"
ami_id             = "ami-0ecb62995f68bb549"
instance_type      = "t3.micro"
subnet_id          = "subnet-00bbed3454b03a91a"
security_group_ids = ["sg-0f810122d781e3748"]
volume_size        = 10

alb_subnets = ["subnet-0add50cddf3f143c6", "subnet-00d2546b7e4a3221a"]
alb_sg      = ["sg-0f810122d781e3748"]
vpc_id      = "vpc-0324027ceaa363ebd"

environment = "uat"
owner       = "Neha"

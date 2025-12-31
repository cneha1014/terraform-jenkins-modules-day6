region             = "us-east-1"
ami_id             = "ami-0abcdef1234567890"
instance_type      = "t3.micro"
subnet_id          = "subnet-xxxxxxxx"
security_group_ids = ["sg-xxxxxxxx"]
volume_size        = 10

alb_subnets = ["subnet-xxxxxx", "subnet-yyyyyy"]
alb_sg      = ["sg-yyyyyyyy"]
vpc_id      = "vpc-xxxxxxxx"

environment = "uat"
owner       = "Neha"

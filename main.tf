module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  
  name = "single-instance"

  ami                    = "ami-09461328af8fbcb9c"
  instance_type          = "t2.micro"
  key_name               = "Golden Key"  
  vpc_security_group_ids = ["sg"]
  subnet_id              = "subnet-01f99bd1078deccd8"
  disable_api_termination = false
  associate_public_ip_address = false
  iam_instance_profile = "arn:aws:iam::ACCOUNT-NUMBER:instance-profile/SSM-ROLE"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

#

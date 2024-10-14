provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "windows_instance" {
  ami           = "ami-0845068028e672a07"  # Replace with the latest Windows AMI ID
  instance_type = "t2.large"
  key_name      = "ayush2"
  subnet_id     = "subnet-01a45c378e4447102"
  vpc_security_group_ids = ["sg-0f072bb4a5cb5558d"]
  tags = {
    Name = "Windows_EC2_Instance"
  }
}

terraform {
  backend "s3" {
    bucket = "testayush"
    key    = "jenkins/terraform.tfstate"
    region = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

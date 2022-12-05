terraform {
  backend "s3" {
    bucket         = "ctl-terraform-state-file-neelam-github"
    key            = "ec2/dev"
    region         = "ap-south-1"
    dynamodb_table = "tf-lock-state"
  }
}
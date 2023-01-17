provider "aws" {
  region = "us-east-1"
  profile = "terraform"
}

resource "aws_s3_bucket" "terraform" {
  bucket = "my-terraform-bucket-00001"

  tags = {
    Name = "My bucket"
    Enviroment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}

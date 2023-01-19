provider "aws" {
  region = var.aws_region
  profile = var.aws_profile
}

resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instance_tags
}

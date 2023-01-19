resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

resource "aws_s3_bucket" "manual" {
  bucket = "yuriduartedev-bucket"

  tags = {
    imported = "18/01/2023"
  }
}

resource "aws_s3_object" "this" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${local.ip_file_path}"
  source       = local.ip_file_path
  etag         = filemd5(local.ip_file_path)
  content_type = "application/json"

  tags = local.common_tags
}

resource "aws_s3_object" "random" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${random_pet.bucket.id}.json"
  source       = local.ip_file_path
  etag         = filemd5(local.ip_file_path)
  content_type = "application/json"

  tags = local.common_tags
}

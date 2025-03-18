resource "aws_s3_bucket" "cloudfront_logs" {
  bucket = "fotomodno-logs-andresramirez"  # Ensure this name is globally unique
}

resource "aws_s3_bucket_ownership_controls" "cloudfront_logs_ownership" {
  bucket = aws_s3_bucket.cloudfront_logs.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "cloudfront_logs_acl" {
  bucket = aws_s3_bucket.cloudfront_logs.id
  acl    = "log-delivery-write"
}

resource "aws_s3_bucket_public_access_block" "cloudfront_logs_public_access" {
  bucket                  = aws_s3_bucket.cloudfront_logs.id
  block_public_acls       = false  # allow ACL modifications so log-delivery-write can be applied
  block_public_policy     = true
  ignore_public_acls      = false
  restrict_public_buckets = true
}

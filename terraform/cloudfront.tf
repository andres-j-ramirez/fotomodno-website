resource "aws_cloudfront_distribution" "static_site_cdn" {
  depends_on = [aws_s3_bucket_website_configuration.static_site_website]

  origin {
    domain_name = "fotomodno-website-andresramirez.s3-website-us-east-1.amazonaws.com"
    origin_id   = "S3-fotomodno"

    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "http-only"  # S3 website endpoints support HTTP only
      origin_ssl_protocols   = ["TLSv1.2"]
    }
  }

  enabled         = true
  is_ipv6_enabled = true
  comment         = "CloudFront distribution for Fotomodno static website"

  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = "S3-fotomodno"
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }
  }

  price_class = "PriceClass_100"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
}

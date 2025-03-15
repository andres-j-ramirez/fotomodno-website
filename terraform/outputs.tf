output "cloudfront_domain" {
  value       = aws_cloudfront_distribution.static_site_cdn.domain_name
  description = "The CloudFront domain name for the static website"
}

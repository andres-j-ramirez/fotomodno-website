resource "aws_cloudwatch_dashboard" "cloudfront_dashboard" {
  dashboard_name = "CloudFrontDashboard"
  dashboard_body = jsonencode({
    widgets = [
      {
        type  = "metric",
        x     = 0,
        y     = 0,
        width = 12,
        height = 6,
        properties = {
          metrics = [
            [
              "AWS/CloudFront",
              "Requests",
              "DistributionId",
              aws_cloudfront_distribution.static_site_cdn.id,
              { "stat": "Sum", "label": "Requests", "region": "us-east-1" }
            ]
          ],
          period      = 300,
          title       = "CloudFront Requests",
          region      = "us-east-1",
          annotations = {}  // Required property; empty object is acceptable
        }
      },
      {
        type  = "metric",
        x     = 12,
        y     = 0,
        width = 12,
        height = 6,
        properties = {
          metrics = [
            [
              "AWS/CloudFront",
              "BytesDownloaded",
              "DistributionId",
              aws_cloudfront_distribution.static_site_cdn.id,
              { "stat": "Sum", "label": "Bytes Downloaded", "region": "us-east-1" }
            ]
          ],
          period      = 300,
          title       = "CloudFront Bytes Downloaded",
          region      = "us-east-1",
          annotations = {}  // Required property; empty object is acceptable
        }
      }
    ]
  })
}

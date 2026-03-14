# outputs.tf
output "bucket_name" {
  description = "S3 bucket name"
  value       = aws_s3_bucket.site.bucket
}

output "cloudfront_url" {
  description = "Live site URL via CloudFront"
  value       = "https://${aws_cloudfront_distribution.site.domain_name}"
}

output "cloudfront_distribution_id" {
  description = "CloudFront distribution ID (used by /deploy skill)"
  value       = aws_cloudfront_distribution.site.id
}

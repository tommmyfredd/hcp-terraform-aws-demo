output "bucket_name" {
  description = "Name of the demo S3 bucket"
  value       = aws_s3_bucket.demo.id
}

output "bucket_arn" {
  description = "ARN of the demo S3 bucket"
  value       = aws_s3_bucket.demo.arn
}

output "region" {
  description = "Region the bucket was created in"
  value       = var.aws_region
}

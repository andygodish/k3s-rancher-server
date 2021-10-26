output "s3_bucket_arn" {
  value = aws_s3_bucket.terraform_state.arn
  description = "ARN of the s3 bucket being used to manage remote tf state."
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.terraform_locks.arn
  description = "ARN of the dynamodb table used to locak the state file."
}


output "eip-public-ip" {
  description = "The elastic public IP address of my ec2-instance"
  value       = aws_eip.eip-public-id.public_ip
}


output "s3-bucket-name" {
  description = "my s3 bucket name"
  value       = aws_s3_bucket.s3-bucket-demo.id
}


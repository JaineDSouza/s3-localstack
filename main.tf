resource "aws_s3_bucket" "bucket_localstack" {
  bucket = "teste-s3-localstack"

  tags = {
    Name        = "test_s3_localstack"
    Environment = "dev"
  }
}
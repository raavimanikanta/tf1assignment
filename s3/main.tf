resource "aws_s3_bucket" "b" {
  bucket=var.s3_bucket

  tags = {
    Name        = "demo-bucket-418"
   }
}

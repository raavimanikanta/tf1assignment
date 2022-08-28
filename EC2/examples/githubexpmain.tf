resource "aws_s3_bucket" "b" {
  bucket=var.new_s3_bucket

  tags = {
    Name        = "demo-bucket-exp1"
   }
}
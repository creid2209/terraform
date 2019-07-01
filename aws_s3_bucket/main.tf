
resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucketName}"
  acl = "${var.acl}"

  tags = {
    Name = "${var.bucketName}"

  }

  versioning {
    enabled = true
  }
}

#comment

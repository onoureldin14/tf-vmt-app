resource "aws_s3_bucket" "example" {
  bucket = "tf-security-vmt-${random_string.name_suffix.result}"
}
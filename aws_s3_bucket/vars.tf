variable "bucketName" {
  type = "string"
  description = "The name which you wish to give the bucket. Must be completely unique"
}

variable "acl" {
  type = "string"
  description = "the access control you wish to place on the bucket"
  default = "private"
}

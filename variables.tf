
# variable "access_key" {}
# variable "secret_key" {}
variable "region" {
  default = "us-east-2"
}

variable "amis" {
  type = "map"
  default = {
    "us-east-1" = ""
    "us-east-2" = "ami-0484545fe7d3da96f"
  }
}

variable "subnets" {
  type = map(map(string))
}

variable "vpc-id" {
  type = string
}

variable "region" {
  type = string
}
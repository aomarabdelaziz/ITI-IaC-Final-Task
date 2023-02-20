variable "gke-name" {
  type = string
}

variable "region" {
  type = string
}

variable "vpc-name" {
  type = string
}

variable "restricted-subnet-name" {
  type = string
}

variable "master-ipv4-cidr-block" {
  type = string
}

variable "gke-node-name" {
  type = string
}

variable "machine-type" {
  type = string
}


variable "google-service-account-email" {
  type = string
}
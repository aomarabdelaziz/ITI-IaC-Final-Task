module "subnets-module" {
  source = "../subnets"
  vpc-id = module.network-module.google_compute_network_vpc_id
  region = "asia-east1"
  subnets = {
    "management" : {
      "name" : "management"
      "cidr" : "10.0.0.0/24"
    },
    "restricted" : {
      "name" : "restricted"
      "cidr" : "10.0.1.0/24"

    }
  }
}
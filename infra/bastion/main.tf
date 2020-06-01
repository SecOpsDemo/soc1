# bastion

terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "ap-northeast-2"
}

module "bastion" {
  source = "./modules/bastion"

  region = "ap-northeast-2"
  city   = "SEOUL"
  stage  = "MMS"
  name   = "SOC1"
  suffix = "BASTION"

  base_domain = "bespin-mss.com"

  vpc_id = "vpc-e2eb0b89"
  subnet_id = "subnet-0a892f7a52585a27f"

  # ami_id = ""
  type = "t2.micro"

  key_name = "SEOUL-MMS-K8S-BASTION"

  allow_ip_address = [
    "58.151.93.9/32", # 강남 echo "$(curl -sL icanhazip.com)/32"
  ]
}

output "name" {
  value = module.bastion.name
}

output "key_name" {
  value = module.bastion.key_name
}

output "public_ip" {
  value = module.bastion.public_ip
}

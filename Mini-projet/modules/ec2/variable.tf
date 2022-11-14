variable "maintainer" {
  type    = string
  default = "vincent"
}

variable "instance_type" {
  type    = string
  default = "t2.nano"
}

variable "ssh_key" {
  type    = string
  default = "devops-vincent"
}

variable "sg_name" {
  type    = string
  default = "NULL"
}
# Cette ressource sera crée lors du terraform apply, d'où sa valeur NULL
variable "public_ip" {
  type    = string
  default = "NULL"
}
# Cette ressource sera crée lors du terraform apply, d'où sa valeur NULL
variable "AZ" {
  type    = string
  default = "us-east-1b"
}
# l'Availability Zone doit être la même pour l'EC2 et le volume qui lui est attaché
variable "user" {
  type    = string
  default = "ubuntu"
}

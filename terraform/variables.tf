 variable "env" {
     description = "Enviroment"
     type = string
 }
variable "access_key" {
     description = "Access key to AWS console"
     type = string
 }
 variable "secret_key" {
     description = "Secret key to AWS console"
     type = string
 }
 variable "ssh_key" {
     description = "Secret key to AWS console"
     type = string
 }
 
 variable "region" {
     description = "Region of AWS VPC"
     type = string
 }
 variable "availability_zone" {
  description = "availability zone to create subnet"
  default = "us-east-2a"
}
 variable "ssh_port" {
  description = "The port the EC2 Instance should listen on for SSH requests."
  type        = number
  default     = 22
}
variable "ssh_user" {
  description = "SSH user name to use for remote exec connections,"
  type        = string
  default     = "ubuntu"
}
variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default = "10.1.0.0/16"
}
variable "cidr_subnet" {
  description = "CIDR block for the subnet"
  default = "10.1.0.0/24"
}
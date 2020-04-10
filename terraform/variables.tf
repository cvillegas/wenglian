variable "access_key" {
     description = "Access key to AWS console"
     type = string
 }
 variable "secret_key" {
     description = "Secret key to AWS console"
     type = string
 }
 variable "region" {
     description = "Region of AWS VPC"
     type = string
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
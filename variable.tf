variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  description = "Ubuntu AMI"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "my_ip" {
  description = "Your public IP with /32"
}

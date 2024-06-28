variable "key_name" { type = string }

variable "availability_zone" { type = string }

variable "ami_id" { type = string }
variable "instance_type" { type = string }

variable "aws_security_group" { type = list(string) }
variable "subnet_id" { type = string }

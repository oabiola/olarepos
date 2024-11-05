variable "AMI" {
    type        = string
    description = "The ID of the Amazon Machine Image (AMI) to use for the instance."
    default = "ami-067d1e60475437da2"
}

variable "instance_type" {
    type        = string
    description = "The  type of instance to start."
    default = "t2.micro"
}

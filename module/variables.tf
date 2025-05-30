variable "ami" {
  description = "The AMI ID to use for the EC2 instance."
  type        = string
  # No default value, making this a required variable.
}

variable "instance_type" {
  description = "The type of EC2 instance to launch."
  type        = string
  default     = "t2.micro" # A common free-tier eligible instance type
}

variable "instance_name" {
  description = "The name tag for the EC2 instance."
  type        = string
  default     = "basic-ec2-instance"
}

variable "tags" {
  description = "A map of tags to assign to the EC2 instance."
  type        = map(string)
  default     = {}
}

variable "root_block_device" {
  description = "Customize details about the root block device of the instance. See Block Devices below for details"
  type        = list(any)
  default     = []
}
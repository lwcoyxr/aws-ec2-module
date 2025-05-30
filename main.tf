provider "aws" {
  region = "eu-north-1"
}

module "ec2_instance" {
  source = "./module"

  ami           = "ami-0c1ac8a41498c1a9c"
  instance_name = "testful-tazik"
  instance_type = "t3.micro"

  root_block_device = [{
    volume_size           = "10"
    volume_type           = "gp3"
    delete_on_termination = true
    encrypted             = true

  }]

  tags = {
    env     = "test"
    project = "module-testing"
  }


}
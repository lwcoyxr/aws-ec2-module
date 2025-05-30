output "my_instance_id" {
  description = "ID of the EC2 instance created by the module."
  value       = module.ec2_instance.instance_id
}

output "my_instance_public_ip" {
  description = "Public IP of the EC2 instance created by the module."
  value       = module.ec2_instance.instance_public_ip
}
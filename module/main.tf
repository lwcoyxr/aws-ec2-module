resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type

  dynamic "root_block_device" {
    for_each = var.root_block_device
    
    content {
      delete_on_termination = try(root_block_device.value.delete_on_termination, null)
      encrypted             = try(root_block_device.value.encrypted, null)
      iops                  = try(root_block_device.value.iops, null)
      kms_key_id            = lookup(root_block_device.value, "kms_key_id", null)
      volume_size           = try(root_block_device.value.volume_size, null)
      volume_type           = try(root_block_device.value.volume_type, null)
      throughput            = try(root_block_device.value.throughput, null)
      tags                  = try(root_block_device.value.tags, null)
    }
  }
  tags = merge(
    {
      Name = var.instance_name
    },
    var.tags
  )
}
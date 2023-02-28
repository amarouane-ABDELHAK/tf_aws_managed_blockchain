output "ec2_ip" {
  value = aws_instance.ec2_instance.public_ip
}

output "ec2_instance_id" {
  value = aws_instance.ec2_instance.id
}

output "ec2_instance_key_name" {
  value = aws_instance.ec2_instance.key_name
}

output "channel_id" {
  value = var.channel_id
}
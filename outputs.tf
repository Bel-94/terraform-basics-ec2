# instance id block
output "instance_is" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.my_ec2.id
}

# public ip address block
output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.my_ec2.public_ip
}

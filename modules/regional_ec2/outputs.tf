output "instance_ip_addr" {
  value       = aws_instance.instance.public_ip
  description = "The private IP address of the EC2 instance."
}

output "connection_string_frankfurt" {
  value = "ssh ec2-user@${module.frankfurt.instance_ip_addr}"
}

output "connection_string_ireland" {
  value = "ssh ec2-user@${module.ireland.instance_ip_addr}"
}

output "connection_string_london" {
  value = "ssh ec2-user@${module.london.instance_ip_addr}"
}

output "connection_string_milan" {
  value = "ssh ec2-user@${module.milan.instance_ip_addr}"
}

output "connection_string_paris" {
  value = "ssh ec2-user@${module.paris.instance_ip_addr}"
}

output "connection_string_stockholm" {
  value = "ssh ec2-user@${module.stockholm.instance_ip_addr}"
}

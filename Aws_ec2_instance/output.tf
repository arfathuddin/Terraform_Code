output "Public-Ip-Address" {
  value = aws_instance.web-server.public_ip
}

output "Private-DNS" {
  value = aws_instance.web-server.private_dns
}
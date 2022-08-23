output "public_key" {
  value = aws_key_pair.this.public_key
}

output "private_key" {
  value = tls_private_key.this.private_key_pem
}

output "key-name" {
  value = aws_key_pair.this.key_name
}
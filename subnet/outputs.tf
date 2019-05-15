output "subnet_id" {
  description = "Subnet ID"
  value       = "${aws_subnet.myvpc_subnet.id}"
}

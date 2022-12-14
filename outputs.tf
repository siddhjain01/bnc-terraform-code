# outputs.tf

output "alb_hostname" {
  value = aws_alb.main.dns_name
}

output "globalaccelerator_ips" {
  description = "IPs of global accelerator"
  value = flatten(
    aws_globalaccelerator_accelerator.main.*.ip_sets.0.ip_addresses,
  )
}
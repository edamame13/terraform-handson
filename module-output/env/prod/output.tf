output "web_adder" {
  value = "https://${module.web.web_ec2_public_ip}"
}
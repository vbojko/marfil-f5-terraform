output "bigiqLicenseManager" {
  value = "${var.bigiqLicenseManager}"
}

output "aws_instance.bigiq.public_ip" {
  value = "${aws_instance.bigiq.public_ip}"
}

output "elb_dns_name" {
  value = "${aws_elb.example.dns_name}"
}

#Disabled output of autoscale elb dns names because these variables are not available until <cloudformation>.tf.dormant => <cloudformation>.tf
/*
output "appInternalDnsName_ltm_autoscale" {
  value = "${aws_elb.f5-autoscale-ltm-elb.dns_name}"
}

output "appInternalDnsName_waf_autoscale" {
  value = "${aws_elb.f5-autoscale-waf-elb.dns_name}"
}
*/

output "vpc-id" {
  value = "${aws_vpc.terraform-vpc.id}"
}

output "vpc-public-d" {
  value = "${aws_subnet.public-d.cidr_block}"
}

output "vpc-public-d-id" {
  value = "${aws_subnet.public-d.id}"
}

output "vpc-private-d" {
  value = "${aws_subnet.private-d.cidr_block}"
}

output "vpc-private-d-id" {
  value = "${aws_subnet.private-d.id}"
}

output "vpc-public-e" {
  value = "${aws_subnet.public-d.cidr_block}"
}

output "vpc-public-e-id" {
  value = "${aws_subnet.public-d.id}"
}

output "vpc-private-e" {
  value = "${aws_subnet.private-d.cidr_block}"
}

output "vpc-private-e-id" {
  value = "${aws_subnet.private-d.id}"
}

output "sshKey" {
  value = "${var.aws_keypair}"
}

output "bigipExternalSecurityGroup" {
  value = "${aws_security_group.elb.id}"
}

output "bigipManagementSecurityGroup" {
  value = "${aws_security_group.f5_management.id}"
}

/*
output "licenseKey1" {
  value = "${var.licenseKey1}"
}

output "licenseKey2" {
  value = "${var.licenseKey2}"
}

output "bigiqLicense" {
  value = "${var.bigiqLicense}"
}
*/
output "managementSubnetAz1" {
  value = "${aws_subnet.f5-management-d.id}"
}

output "managementSubnetAz2" {
  value = "${aws_subnet.f5-management-e.id}"
}

output "restrictedSrcAddress" {
  value = "0.0.0.0/0"
}

output ssl_certificate_id {
  value = "${aws_iam_server_certificate.elb_cert.arn}"
}

output "**aws_alias**" {
  value = "${var.aws_alias}"
}

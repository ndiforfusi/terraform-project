resource "aws_security_group" "allow_tls" {
  name        = "class39-security-group"
  description = "Allow TLS inbound traffic and all outbound traffic"

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_port_443" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.vpn-ip
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}


resource "aws_vpc_security_group_ingress_rule" "allow_port_80" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.vpn-ip
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "allow_port_22" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.vpn-ip
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}


resource "aws_vpc_security_group_ingress_rule" "allow_port_21" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.vpn-ip
  from_port         = var.allow_port_21
  ip_protocol       = "tcp"
  to_port           = var.allow_port_21
}

resource "aws_vpc_security_group_ingress_rule" "allow_port_8080" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.vpn-ip
  from_port         = var.allow_port_8080
  ip_protocol       = "tcp"
  to_port           = var.allow_port_8080
}

resource "aws_vpc_security_group_ingress_rule" "allow_port_9000" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.vpn-ip
  from_port         = var.allow_port_9000
  ip_protocol       = "tcp"
  to_port           = var.allow_port_9000
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv6" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv6         = "::/0"
  from_port         = var.allow_port_443
  ip_protocol       = "tcp"
  to_port           = var.allow_port_443
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv6" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv6         = "::/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
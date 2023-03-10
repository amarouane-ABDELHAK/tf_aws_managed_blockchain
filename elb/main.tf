
resource "aws_elb" "os_blockchaine_elb" {
  name               = "${var.prefix}-os-blockchain-elb"
  security_groups = [var.security_groups]
  subnets = [var.pub_sub]


  listener {
    instance_port     = 30000
    instance_protocol = "TCP"
    lb_port           = 80
    lb_protocol       = "TCP"
  }


  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:3000/health"
    interval            = 30
  }

  instances                   = [var.blockchain_ec2_cli_id]


  tags = {
    Name = "${var.prefix}-os-blockchain-elb"
  }
}
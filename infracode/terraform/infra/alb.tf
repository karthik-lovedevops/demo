/* Application load balancer */
resource "aws_lb" "my-web" {
  name               = var.loadbalancer_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.external_sg.id]
  subnets            = aws_subnet.public_subnet.*.id
}

/* Target group for the application load balancer */
resource "aws_lb_target_group" "my-web-tg" {
  name        = "my-web-alb-tg"
  port        = 443
  protocol    = "HTTPS"
  target_type = "ip"
  vpc_id      = aws_vpc.vpc.id
}


/* Listener for ALB to forward  Target group */
resource "aws_lb_listener" "my-web-listener" {
  load_balancer_arn = aws_lb.my-web.arn
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.my-web-tg.arn
  }
}

/* Security group for ALB */
resource "aws_security_group" "external_sg" {
  name        = "external-sg-group"
  description = "allow inbound access"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    protocol        = "tcp"
    from_port       = 80
    to_port         = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    protocol        = "tcp"
    from_port       = 443
    to_port         = 443
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

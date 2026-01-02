resource "aws_lb" "this" {
  name               = "day6-${var.environment}-alb"
  load_balancer_type = "application"
  subnets            = var.subnets
  security_groups    = var.security_groups

  tags = {
    Environment = var.environment
    Owner       = var.owner
  }
}

resource "aws_lb_target_group" "this" {
  name     = "day6-${var.environment}-alb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

resource "aws_lb_listener" "this" {
  load_balancer_arn = aws_lb.this.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.this.arn
  }
}

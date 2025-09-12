provider "aws" {
  region = var.region
}

# 🔹 Security Group for EC2 & ALB
resource "aws_security_group" "asg_sg" {
  name        = "asg-sg"
  description = "Allow HTTP inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# 🔹 Launch Template
resource "aws_launch_template" "asg_lt" {
  name_prefix   = "asg-launch-template-"
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = "my-key" # তোমার key pair নাম

  vpc_security_group_ids = [aws_security_group.asg_sg.id]

  user_data = filebase64("${path.module}/user_data.sh")
}

# 🔹 ALB
resource "aws_lb" "app_lb" {
  name               = "asg-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.asg_sg.id]
  subnets            = var.subnets
}

# 🔹 Target Group
resource "aws_lb_target_group" "asg_tg" {
  name     = "asg-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  health_check {
    path                = "/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
}

# 🔹 Listener
resource "aws_lb_listener" "asg_listener" {
  load_balancer_arn = aws_lb.app_lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.asg_tg.arn
  }
}

# 🔹 Auto Scaling Group
resource "aws_autoscaling_group" "asg" {
  desired_capacity     = 2
  max_size             = 3
  min_size             = 1
  vpc_zone_identifier  = var.subnets
  target_group_arns    = [aws_lb_target_group.asg_tg.arn]

  launch_template {
    id      = aws_launch_template.asg_lt.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "ASG-Instance"
    propagate_at_launch = true
  }
}

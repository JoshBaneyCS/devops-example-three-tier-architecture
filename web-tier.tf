resource "aws_launch_template" "web" {
  name_prefix = "web-template"

  image_id      = "ubuntu" 
  instance_type = "t2.micro"

  network_interfaces {
    associate_public_ip_address = true
  }
}

resource "aws_autoscaling_group" "web" {
  launch_template = {
    id      = aws_launch_template.web.id
    version = "$Latest"
  }

  min_size         = 2
  max_size         = 4
  desired_capacity = 2

  vpc_zone_identifier = module.vpc.public_subnets
}

resource "aws_launch_template" "app" {
  name_prefix = "app-template"

  image_id      = "ubuntu" 
  instance_type = "t2.micro"

  iam_instance_profile {
    name = "AppInstanceProfile"
  }
}

resource "aws_autoscaling_group" "app" {
  launch_template = {
    id      = aws_launch_template.app.id
    version = "$Latest"
  }

  min_size         = 2
  max_size         = 4
  desired_capacity = 2

  vpc_zone_identifier = var.app_subnet_ids
}

resource "aws_ecs_cluster" "my_cluster" {
  name = var.clustername

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  tags = {
    Name = "MyCluster"
  }
}

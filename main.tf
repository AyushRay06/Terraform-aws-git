
resource "aws_instance" "name" {
  ami           = var.ami-value
  instance_type = var.instance-type

  tags = {
    Name = var.name
  }

}

resource "github_repository" "example" {
  name        = var.repo_name
  description = var.description

  visibility = var.visibility

}

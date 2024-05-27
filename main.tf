provider "aws" {
  region = "us-east-1"  # Change this to your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-04b70fa74e45c3917"  # Change this to your desired AMI ID
  instance_type = "t2.micro"               # Change this to your desired instance type
  key_name      = "my-key-pair"            # Attach your desired key pair name here
  tags = {
    Name = "terraform-server"  # Add a tag with key "Name" and value "terraform-server"

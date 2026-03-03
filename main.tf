# provider block
provider "aws" {
  region = var.region
}

# Resource block to create an ec2 instance
resource "aws_instance" "my_ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.terraform_key.key_name

  tags = {
    Nmae = "TerraformEC2"
  }
}

# Generate a new SSH key pair locally:
resource "tls_private_key" "generated_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Create an AWS key pair using the public key
resource "aws_key_pair" "terraform_key" {
  key_name   = "terraform-key" #This will be created in aws 
  public_key = tls_private_key.generated_key.public_key_openssh
}

# Save the private key to a local file (so you can SSH into the instance)
resource "local_file" "private_key_pem" {
  content         = tls_private_key.generated_key.private_key_pem
  filename        = "terraform-key.pem"
  file_permission = "0400"
}
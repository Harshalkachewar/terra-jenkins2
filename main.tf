terraform {
  required_version = ">= 1.2.0"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# Create a folder
resource "local_file" "demo_file" {
  content  = "Terraform file created on Linux server"
  filename = "/tmp/terraform-demo-file.txt"
}

# Execute shell command
resource "null_resource" "run_command" {

  provisioner "local-exec" {
    command = "echo 'Hello from Terraform on Linux!' >> /tmp/terraform-output.txt"
  }
}

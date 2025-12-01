terraform {
  required_version = ">= 1.1.0"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

# Remote execution on your Linux server
resource "null_resource" "remote_file" {

  provisioner "remote-exec" {
    inline = [
      "echo 'File created by Terraform from Jenkins' > /tmp/terraform-created-file.txt",
      "chmod 644 /tmp/terraform-created-file.txt"
    ]

    connection {
      type     = "ssh"
      user     = "root"
      password = var.server_password
      host     = var.server_ip
    }
  }
}

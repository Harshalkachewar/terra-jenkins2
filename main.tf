terraform {
  required_providers {
    linux = {
      source  = "mavidser/linux"
      version = "1.0.2"
    }
  }
}

provider "linux" {
  host     = "192.168.1.190"   # change as per your server
  user     = "root"
  password = "redhat"               # change to real password
}

# Create multiple users using map from vars.tf
resource "linux_user" "users" {
  for_each = var.map1

  name = each.key          # Key = user name
  uid  = each.value        # Value = UID from map
}

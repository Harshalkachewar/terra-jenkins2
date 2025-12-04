
terraform {
  required_providers {
    linux = {
      source = "mavidser/linux"
      version = "1.0.2"
    }
  }
}
provider "linux" {
        host = "192.168.1.190"
        user = "root"
        password = "redhat"
}
resource "linux_user" "res1" {
        name = "${keys(var.map1)[0]}"
        uid = "${var.map1["Suser5"]
}
}
resource "linux_user" "res2" {
        name = "${keys(var.map1)[1]}"
        uid = "${var.map1["${keys(var.map1)[1]}"]}"
}
resource "linux_user" "res3" {
        name = "${keys(var.map1)[2]}"
        uid = "${var.map1["Suser7"]}"
}

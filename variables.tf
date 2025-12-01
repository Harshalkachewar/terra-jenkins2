variable "server_ip" {
  default = "192.168.1.190"
}

variable "server_password" {
  description = "Root password for Linux server"
  sensitive   = true
}

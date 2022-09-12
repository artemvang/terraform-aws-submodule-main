variable "run_id" {
  default = "run_id_2"
  sensitive = true
}

variable "sleep_time" {
  default = 125
}




resource "null_resource" "env_varstimeout0123456789timeout0123456789timeout0123456789timeout0123456789" {
  count = 1
  triggers = {
    run_id = var.run_id
  }
  provisioner "local-exec" {
    command = "env"
  }
}



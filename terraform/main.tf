resource "random_uuid" "uuid" {}

resource "azurerm_resource_group" "rg" {
  location = "uk south"
  name     = "gha-demo"
}

resource "null_resource" "demo" {

  provisioner "local-exec" {
    command     = "echo $path"
    interpreter = ["/bin/bash", "-c"]

  }

  triggers = {
    run_always = timestamp()
  }
}
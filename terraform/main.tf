resource "random_uuid" "uuid" {}

resource "azurerm_resource_group" "rg" {
  location = "uksouth"
  name     = "gha-demo"
}

resource "null_resource" "demo" {

  provisioner "local-exec" {
    command = <<EOF
ls

whoami
pwd
EOF
  }


  triggers = {
    always_run = timestamp()
  }
}


resource "null_resource" "demo1" {

  provisioner "local-exec" {

    command = <<EOF
pwd
whoami
EOF
  }

}

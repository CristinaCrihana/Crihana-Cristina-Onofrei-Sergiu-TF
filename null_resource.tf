resource "null_resource" "remote_exec" {
  count = var.vm_count
  depends_on = [azurerm_linux_virtual_machine.example]

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      host     = azurerm_public_ip.public_ip[count.index].ip_address
      user     = "adminuser"
      password = random_password.password.result
    }

    inline = [
      "ping -c 4 ${azurerm_public_ip.public_ip[(count.index + 1) % var.vm_count].ip_address}"
    ]
  }
}
resource "azurerm_subnet" "subnet" {
    name                 = "example-subnet"
    resource_group_name  = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = ["10.0.1.0/24"]
}

#mai intai facem o masina virtuala simpla vmsize si vmimage
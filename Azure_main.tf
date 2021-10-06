provider "azurerm"  {
    version = "~> 2.0.0"
    features {}
}

resource "azurerm_resource_group" "resource"{
    name        = "Connaire-test-group"
    location    = "West Europe"
}

resource "azurerm_virtual_network" "virtual_network"{
    name                = "connaire-test-network"
    address_space       = ["10.0.0.0/16"]
    resource_group_name = azurerm_resource_group.resource.name
    location            = azurerm_resource_group.resource.location
}

resource "azurerm_subnet" "subnet" {
    name                    =   "internal"
    resource_group_name     = azurerm_resource_group.resource.name
    virtual_network_name    = azurerm_virtual_network.virtual_network.name
    address_prefix          = "10.0.2.0/24"
}

resource "azurerm_network_interface" "interface" {
    name                = "connaire-test-interface"
    location            = azurerm_resource_group.resource.location
    resource_group_name = azurerm_resource_group.resource.name

    ip_configuration {
        name                            = "internal"
        subnet_id                       = azurerm_subnet.subnet.id
        private_ip_address_allocation   = "Dynamic"
    }
}

resource "azurerm_availability_set" "availability_set" {
    name                    =   "Connaire-test-set"
    resource_group_name     = azurerm_resource_group.resource.name
    location                = azurerm_resource_group.resource.location

    tags = {
        environment = "Dev"
    }
}

module "Windows_VM" {
    source = "./azure_windows_vm"

    instance_name           = "Connaire-testVM"
    resource_group_name     = azurerm_resource_group.resource.name
    location                = azurerm_resource_group.resource.location
    admin_password          = "Thisisapassphrase#1"
    subnet_id               = azurerm_subnet.subnet.id
    network_interface_ids   = [azurerm_network_interface.interface.id]
    availability_set_id     = azurerm_availability_set.availability_set.id

}
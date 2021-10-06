resource "azurerm_windows_virtual_machine" "vm_windows" {

    name                    =   var.instance_name
    resource_group_name     =   var.resource_group_name
    location                =   var.location
    size                    =   var.size
    admin_username          =   "ConnaireAdminUser"
    admin_password          =   var.admin_password

    # subnet_id             =   var.subnet_id
    # ip_configuration_name =   var.ip_configuration_name
    # ip_address            =   var.ip_address
    # hostname              =   var.hostname
    # availability_set_id     =   var.availability_set_id


    network_interface_ids    = var.network_interface_ids

    os_disk {
        caching                 =   "ReadWrite"
        storage_account_type    =   var.storage_account_type
    }

    source_image_reference{
        publisher               =   var.publisher
        offer                   =   var.offer
        sku                     =   var.sku
        version                 =   var.image_version
    }
}
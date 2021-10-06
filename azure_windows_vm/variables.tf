variable "instance_name" {
    description = "name"
    type        = string
}

variable "resource_group_name" {
    description = "name"
    type        = string
}

variable "location" {
    description = "name"
    type        = string
}

variable "size" {
    description = "name"
    type        = string
    default     = "Standard_B1s"
}

variable "admin_password" {
    description = "name"
    type        = string
}

variable "subnet_id" {
    description = "name"
    type        = string
    default     = ""
}

variable "ip_configuration_name" {
    description = "name"
    type        = string
    default     = ""
}

variable "ip_address" {
    description = "name"
    type        = string
    default     = ""
}

variable "hostname" {
    description = "name"
    type        = string
    default     = ""
}

variable "availability_set_id" {
    description = "name"
    type        = string
}

variable "network_interface_ids" {
    description = "name"
    type        = list(string)
}

variable "storage_account_type" {
    description = "name"
    type        = string
    default     = "Standard_LRS"
}

variable "publisher" {
    description = "name"
    type        = string
    default     = "MicrosoftWindowsServer"
}

variable "offer" {
    description = "name"
    type        = string
    default     = "WindowsServer"
}

variable "sku" {
    description = "name"
    type        = string
    default     = "2016-Datacenter"
}

variable "image_version" {
    description = "name"
    type        = string
    default     = "latest"
}
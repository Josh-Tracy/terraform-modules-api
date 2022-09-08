variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string

}

variable "resource_group_location" {
  description = "Location of the resource group"
  type        = string

}

variable "vnet_cidr" {
    type = list
    description = "Address space of the VNET in CIDR notation"
  
}

variable "subnet1_address_prefix" {
    type = string
    description = "Address prefix for subnet 1 in demo VNET in CIDR notation"
}

variable "subnet2_address_prefix" {
    type = string
    description = "Address prefix for subnet 2 in demo VNET in CIDR notation"
}
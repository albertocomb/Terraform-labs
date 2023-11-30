variable "Albertocomsa_nsg_rules" {
  description = "List of NSG rules"
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  default = []
}

variable "Albertocomsa_subnets" {
  description = "List of subnets"
  type = list(object({
    name                      = string
    address_prefix            = string
    network_security_group_id = string
  }))
  default = []
}

# MSI keys , add this details to backend.tf file if there is any change in value
variable "subscription_id" {
  description = "Subscription ID"
}
variable "client_id" {
  description = "App Id"
}
variable "client_secret" {
  description = "Key for Service principal"
}
variable "tenant_id" {
  description = "Tenant ID from AD"
}


variable "resourcegrpname" {
  description = "Resource Group"
  #default     = "resgroup-module-demo"
}
variable "resourceglocation" {
  description = "Location"
  #default     = "centralindia"
}


# VNet variables
variable "vnet_name" {
  description = "Virtual network name"
  #default     = "appvnet"
}
variable "vnet_address_space" {
  description = "VNet address space"
  #default     = ["10.0.0.0/16"]
}

#Subnet variables
variable "subnet_name" {
  description = "Subnet name"
  #default     = "appsubnet"
}
variable "subnet_address_prefixes" {
  description = "subnet address prefixes"
  #default     = ["10.0.1.0/24"]
}

# Network security group variables
variable "nsgname" {
  description = "Network security group name "
  #default     = "appnsg"
}

#virtualmachine variable
variable "vm_name" {
  #default = "Virtualmachinename "
  description = "Name of the computer"
}
variable "admin_username" {
  #default = "testadmin"
  description = "The username associated with the local administrator account on the virtual machine"
}

variable "admin_password" {
  #default = "Password1234!"
  description = "The password associated with the local administrator account on the virtual machine"
}





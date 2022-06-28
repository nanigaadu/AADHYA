module "resource_group" {
  source            = "./modules/resource_group"
  resourcegrpname   = var.resourcegrpname
  resourceglocation = var.resourceglocation
}

module "virtual_network" {
  source             = "./modules/virtual_network"
  resourcegrpname    = module.resource_group.rg_name
  resourceglocation  = var.resourceglocation
  vnet_name          = var.vnet_name
  vnet_address_space = var.vnet_address_space
}

module "subnet" {
  source                  = "./modules/subnet"
  resourcegrpname         = module.resource_group.rg_name
  resourceglocation       = var.resourceglocation
  subnet_name             = var.subnet_name
  vnet_name               = module.virtual_network.vnet_name
  subnet_address_prefixes = var.subnet_address_prefixes

}

module "security_group" {
  source            = "./modules/security_group"
  resourcegrpname   = module.resource_group.rg_name
  resourceglocation = var.resourceglocation
  nsgname           = var.nsgname
}


# module "storage_account"{
#     source               = "./modules/storageaccount"
#     storage_account_name = var.storage_account_name
#     resourcegrpname      = module.resource_group.rg_name
#     resourceglocation    = var.resourceglocation
#     container_name       = var.container_name

# }

module "Virtualmachine" {
  source            = "./modules/Virtualmachine"
  resourcegrpname   = module.resource_group.rg_name
  resourceglocation = var.resourceglocation
  subnet_id         = module.subnet.subnet_id
  rg_network        = var.vnet_name
  nsg_id            = module.security_group.nsg_id
}


module "rg" {
  for_each                = var.application_environments
  source                  = "./modules/resource-group"
  resource_type           = "rg"
  application             = var.organization
  workload_environments   = var.workload_environments
  application_environment = each.value #var.application_environment# 
  region                  = var.region
  region_short            = var.region_short
  ops_team                = var.ops_team
  owner                   = var.owner
  business_criticality    = var.business_criticality
  ops_commitment          = var.ops_commitment
}

module "s3" {
  for_each                = var.application_environments
  source                  = "./modules/bucket"
  resource_type           = "s3"
  application             = var.organization
  workload_environments   = var.workload_environments
  application_environment = each.value #var.application_environment#
  region                  = var.region
  region_short            = var.region_short
  ops_team                = var.ops_team
  owner                   = var.owner
  business_criticality    = var.business_criticality
  ops_commitment          = var.ops_commitment
  resource_group          = module.rg[each.value]
  resource_group_id       = module.rg[each.value].resource_group_id
  resource_group_arn      = module.rg[each.value].resource_group_arn
}

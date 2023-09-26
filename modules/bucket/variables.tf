# define variables 
variable "resource_type" {
  type        = string
  description = "name of the resource type"
}

variable "application_environment" {
  type        = string
  description = "Deployment environment of the application, workload, or service. That are dev, test, uat and hotfix"
}

variable "application" {
  type        = string
  description = "Name of the workload the resource supports."
}

variable "region" {
  type        = string
  description = "the location of the resource"
}

variable "region_short" {
  type        = string
  description = "the short name for the location"
}

variable "ops_team" {
  type        = string
  description = "Team accountable for day-to-day operations."
}

variable "owner" {
  type        = string
  description = "Owner of the application, workload, or service."
}

variable "business_criticality" {
  type        = string
  description = "Business impact of the resource or supported workload."
}

variable "ops_commitment" {
  type        = string
  description = "Level of operations support provided for this workload or resource."
}

variable "sku" {
  type        = string
  default     = "free" #Standard
  description = "The pricing tiers"
}

variable "workload_environments" {
  type        = string
  description = "Deployment environment of the application, workload, or service., e.g: non-prod vs prod"
}

variable "resource_group" {
  type = object({})
  description = "The resource groups of the application"
}

variable "resource_group_id" {
  type        = string
  description = "The resource groups name arn of the application"
}

variable "resource_group_arn" {
  type        = string
  description = "The resource groups name arn of the application"
}
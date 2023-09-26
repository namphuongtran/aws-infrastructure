variable "organization" {
  type        = string
  description = "the product name which is used to name the components or resources"
  default     = "ags"
}

variable "workload_environments" {
  type        = string
  description = "Deployment environment of the application, workload, or service., e.g: non-prod vs prod"
  default     = "non-prod"
}

variable "region" {
  type        = string
  description = "the region that resource will be deployed"
  default     = "us-east-1" 
}

variable "region_short" {
  type        = string
  description = "the short name for the location"
  default     = "ue1" 
}

variable "region_failover" {
  type        = string
  description = "the region that resource will be deployed"
  default     = "us-west-1" 
}

variable "region_short_failover" {
  type        = string
  description = "the short name for the location"
  default     = "uw1" 
}

variable "region_short_group" {
  type        = string
  description = "the short name for the location"
  default     = "us" 
}

variable "ops_team" {
  type        = string
  description = "Team accountable for day-to-day operations."
  default     = "MSP-Terraform"
}

variable "owner" {
  type        = string
  description = "Owner of the application, workload, or service."
  default     = "Nam Phuong Tran"
}

variable "business_criticality" {
  type        = string
  description = "Business impact of the resource or supported workload."
  default     = "High"
}

variable "ops_commitment" {
  type        = string
  description = "Level of operations support provided for this workload or resource."
  default     = "Workload operations"
}

variable "application_environments" {
  type        = set(string)
  description = "Deployment environment of the application, workload, or service. That are dev, test, uat and hotfix"
  default = [
    "test"
  ]
}

variable "application_environment" {
  type        = string
  description = "Deployment environment of the application, workload, or service. That are dev, test, uat and hotfix"
  default = "test"
  }
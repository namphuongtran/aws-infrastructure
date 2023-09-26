resource "aws_s3_bucket" "s3" {
  bucket = join("-", [var.resource_type, var.application, var.application_environment, var.region_short]) #"s3-static-website-bucket"                                                                               # Make the bucket public

  tags = {
    Environment            = var.workload_environments
    ApplicationEnvironment = var.application_environment
    OpsTeam                = var.ops_team
    Owner                  = var.owner
    Criticality            = var.business_criticality
    OpsCommitment          = var.ops_commitment
    ApplicationName        = upper(var.application)
  }
  depends_on = [ var.resource_group]
}

resource "aws_s3_bucket_website_configuration" "s3_website" {
  bucket = aws_s3_bucket.s3.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  routing_rule {
    condition {
      key_prefix_equals = "docs/"
    }
    redirect {
      replace_key_prefix_with = "documents/"
    }
  }

  depends_on = [ var.resource_group]
}

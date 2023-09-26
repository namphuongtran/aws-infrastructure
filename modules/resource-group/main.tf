resource "aws_resourcegroups_group" "rg" {
  name = join("-", [var.resource_type, var.application, var.application_environment, var.region_short])

  resource_query {
    query = <<JSON
    {
      "ResourceTypeFilters": [
        "AWS::AllSupported"
      ],
      "TagFilters": [
        {
          "Key": "Environment",
          "Values": ["${var.workload_environments}"]
        },
        {
          "Key": "ApplicationEnvironment",
          "Values": ["${var.application_environment}"]          
        },
        {
          "Key": "OpsTeam",
          "Values": ["${var.ops_team}"]
        },
        {
          "Key": "Owner",
          "Values": ["${var.owner}"]
        },{
          "Key": "Criticality",
          "Values": ["${var.business_criticality}"]          
        },{
          "Key": "OpsCommitment",
          "Values": ["${var.ops_commitment}"]          
        },{
          "Key": "ApplicationName",
          "Values": ["${upper(var.application)}"]
        }
      ]
    }
  JSON
  }
}
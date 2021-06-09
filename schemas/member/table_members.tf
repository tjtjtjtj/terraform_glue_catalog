locals {
  table_name        = "members"
  table_description = "会員マスタ"
  location          = "s3://gdpffff-bucket/member/members"
  columns = [
    {
      name = "id"
      type = "string"
    },
    {
      name = "name"
      type = "string"
    }
  ]
  partition_keys = [
    {
      name = "date_of_birth"
      type = "string"
    }
  ]
}

module "table_csv" {
  source = "../../modules/gluedatacatalog_table_csv"

  database_name     = local.database_name
  table_name        = local.table_name
  table_description = local.table_description
  location          = local.location
  columns           = local.columns
  partition_keys    = local.partition_keys
}

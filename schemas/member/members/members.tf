locals {
  database_name     = "member"
  table_name        = "members"
  table_description = "会員マスタ"
  location          = "s3://gdpffff-bucket/member/members"
  columns = [
    {
      name = "id"
      type = "string"
      comment = "ID"
    },
    {
      name = "name"
      type = "string"
      comment = "名前"
    }
  ]
  partition_keys = [
    {
      name = "date_of_birth"
      type = "string"
      comment = "誕生日"
    }
  ]
}

module "table_csv" {
  source = "../../../modules/gluedatacatalog_table_csv"

  database_name     = local.database_name
  table_name        = local.table_name
  table_description = local.table_description
  location          = local.location
  columns           = local.columns
  partition_keys    = local.partition_keys
}

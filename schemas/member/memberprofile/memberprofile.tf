locals {
  database_name     = "member"
  table_name        = "memberprofile"
  table_description = "会員プロファイル"
  location          = "s3://gdpffff-bucket/member/members2"
  columns = [
    {
      name    = "id"
      type    = "string"
      comment = "ID"
    },
    {
      name    = "address"
      type    = "string"
      comment = "住所"
    }
  ]
  partition_keys = [
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

locals {
  database_name        = "member"
  database_description = "会員マスタ2"
}

module "database" {
  source = "../../modules/gluedatacatalog_db"

  database_name        = local.database_name
  database_description = local.database_description
}

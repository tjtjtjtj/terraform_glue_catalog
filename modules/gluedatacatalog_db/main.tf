resource "aws_glue_catalog_database" "glue_catalog_database" {

  name = var.database_name
  description = var.database_description
}

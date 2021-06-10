variable "database_name" {
  type = string
}

variable "table_name" {
  type = string
}

variable "table_description" {
  type = string
}

variable "location" {
  type = string
}

variable "columns" {
  type = list(object({
    name    = string
    type    = string
    comment = string
  }))
}

variable "partition_keys" {
  type = list(object({
    name    = string
    type    = string
    comment = string
  }))
}

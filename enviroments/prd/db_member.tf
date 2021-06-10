module "db_member" {
  source = "../../schemas/member"
}

module "table_members" {
  source = "../../schemas/member/members"
}

module "table_memberprofile" {
  source = "../../schemas/member/memberprofile"
}


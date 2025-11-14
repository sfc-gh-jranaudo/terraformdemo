terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
  }
  backend "remote" {
    organization = "jsnow9191"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
    organization_name = SFSENORTHAMERICA
    account_name      = SFSENORTHAMERICA_JPR_DEMO
    user              = "JP"
    role              = "ACCOUNTADMIN"
    authenticator     = "PROGRAMMATIC_ACCESS_TOKEN"
    password          = "eyJraWQiOiIxNjk1MjgzMjkyMjgwODMyNiIsImFsZyI6IkVTMjU2In0.eyJwIjoiMTAxMDQ2NzU4ODoyNTg2Nzk3MDM0MjkiLCJpc3MiOiJTRjoxMDA5IiwiZXhwIjoxNzY0NDM5MDIwfQ.mcifBUA_TCbA5oh8boP60f4EYOtdPUwWzZ0LcWT9ilJcIET--2VSZfyffaX0fFkvciwDUF7iDple6pEceO5bYw"
}

resource "snowflake_database" "wtw_demo_db" {
  name    = "WTW_DEMO_DB"
  comment = "Database for Snowflake Terraform demo test2"
}

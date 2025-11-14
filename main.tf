terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
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
}

resource "snowflake_database" "wtw_demo_db" {
  name    = "WTW_DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}

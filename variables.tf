# Heroku Provider variables
variable "heroku_account_email" {
  default = "tbd"
}

variable "heroku_api_key" {
  default = "tbd"
}

# Pipeline variables
variable "heroku_pipeline_name" {
  default = "heroku-terraform"
}

# Apps variables

variable "heroku_develop_app" {
  default = "dev-terraform-example"
}
variable "heroku_staging_app" {
  default = "staging-terraform-example"
}
variable "heroku_production_app" {
  default = "prod-terraform-example"
}
variable "heroku_region" {
  default = "eu"
}

variable "heroku_app_buildpacks" {
  type = list(string)
  default = [
    "heroku/java",
  ]
}

# Addons variable
variable "heroku_develop_database" {
  default = "heroku-postgresql:hobby-dev"
}

variable "heroku_staging_database" {
  default = "heroku-postgresql:hobby-dev"
}
variable "heroku_production_database" {
  default = "heroku-postgresql:hobby-dev"
}

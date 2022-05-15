# Addons

# Develop database
resource "heroku_addon" "develop" {
  app_id  = "${heroku_app.develop.id}"
  plan    = "${var.heroku_develop_database}"
}

# Staging database
resource "heroku_addon" "staging" {
  app_id  = "${heroku_app.staging.id}"
  plan    = "${var.heroku_staging_database}"
}

# Production database
resource "heroku_addon" "production" {
  app_id  = "${heroku_app.production.id}"
  plan    = "${var.heroku_production_database}"
}

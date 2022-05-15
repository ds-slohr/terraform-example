# Heroku pipeline

resource "heroku_pipeline" "pipeline" {
  name = "${var.heroku_pipeline_name}"
}

resource "heroku_pipeline_coupling" "develop" {
  app_id    = "${heroku_app.develop.id}"
  pipeline = "${heroku_pipeline.pipeline.id}"
  stage    = "development"
}

resource "heroku_pipeline_coupling" "staging" {
  app_id   = "${heroku_app.staging.id}"
  pipeline = "${heroku_pipeline.pipeline.id}"
  stage    = "staging"
}

resource "heroku_pipeline_coupling" "production" {
  app_id   = "${heroku_app.production.id}"
  pipeline = "${heroku_pipeline.pipeline.id}"
  stage    = "production"
}

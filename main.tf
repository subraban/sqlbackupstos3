resource "google_storage_bucket" "sql_bucket" {
  name     = "sqlbackups"
  location = "us-central1"
  storage_class = "STANDARD"
}

resource "google_storage_bucket_object" "mysql_object1" {
  name   = var.sqlfile1
  bucket = google_storage_bucket.sql_bucket.name
  source = var.sql1
}

resource "google_storage_bucket_object" "mysql_object2" {
  name   = var.sqlfile2
  bucket = google_storage_bucket.sql_bucket.name
  source = var.sql2
}
resource "google_storage_bucket_object" "mysql_object3" {
  name   = var.sqlfile3
  bucket = google_storage_bucket.sql_bucket.name
  source = var.sql3
}

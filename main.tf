resource "google_storage_bucket" "bucket" {
  provider = google-beta
  name = "${var.service}-${var.stage}-bucket"
}

resource "google_storage_bucket_object" "archive" {
  provider = google-beta
  name = "${var.service}-${var.stage}-${filemd5(var.source_file)}.zip"
  bucket = google_storage_bucket.bucket.name
  source = var.source_file
}
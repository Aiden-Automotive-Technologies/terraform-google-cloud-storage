output "bucket_name" {
  value = "${google_storage_bucket.bucket.name}"
}
output "bucket_object_name" {
  value = "${google_storage_bucket_object.archive.name}"
}
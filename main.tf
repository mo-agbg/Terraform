provider "google" {


}
resource "google_storage_bucket" "default" {
  name = var.bucket_name
  project = var.project_id
  storage_class = var.storage_class
  location = var.bucket_location

  }

resource "google_cloudfunctions_function_iam_member" "invoker" {
project        = var.project_id
region         = var.bucket_location
cloud_function = var.function_name

role   = "roles/cloudfunctions.invoker"
member = "serviceAccount:sa-test-acn-dev@${var.project_id}.iam.gserviceaccount.com"
}
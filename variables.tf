variable "bucket_name" {
    type = string
    description = "Bucket name"
}

variable "bucket_location" {
    type = string
    default = "us-central1"
}

variable "project_id" {
    type = string
    default = "acn-anz-agbg-cop"
}

variable "storage_class" {
    type = string
}

variable "function_name" {
    type = string
}

variable "api_name" {
    type = string
}

git branch -m main init
git fetch origin
git branch -u origin/init init
git remote set-head origin -a
variable "zitadel_domain" {
  description = "Zitadel domain (e.g., zitadel.home.mauriciomelo.io)"
  type        = string
  default     = "zitadel.home.mauriciomelo.io"
}

variable "service_account_json" {
  description = "Path to the Terraform service account JWT key file"
  type        = string
  sensitive   = true
}


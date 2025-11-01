terraform {
  required_providers {
    zitadel = {
      source  = "zitadel/zitadel"
      version = "~> 1.0"
    }
  }
}

provider "zitadel" {
  domain           = var.zitadel_domain
  insecure         = false
  port             = "443"
  jwt_profile_json = var.service_account_json
}

resource "zitadel_org" "tesselar_org" {
  name = "tesselar_org"
}

# Define the Tesselar Apps Project
resource "zitadel_project" "tesselar_project" {
  name   = "Tesselar Apps"
  org_id = zitadel_org.tesselar_org.id
}

# Future OIDC applications will be defined here
# Example structure for OpenWebUI (to be added later):
#
resource "zitadel_application_oidc" "openwebui" {
  org_id                      = zitadel_org.tesselar_org.id
  project_id                  = zitadel_project.tesselar_project.id
  name                        = "OpenWebUI"
  redirect_uris               = ["https://openwebui.home.mauriciomelo.io/oauth/oidc/callback"]
  post_logout_redirect_uris   = ["https://openwebui.home.mauriciomelo.io"]
  response_types              = ["OIDC_RESPONSE_TYPE_CODE"]
  grant_types                 = ["OIDC_GRANT_TYPE_AUTHORIZATION_CODE"]
}

# Outputs for application credentials
# These will be written to the zitadel-terraform-outputs secret
# and can be used by other applications

# Example outputs for future OIDC applications:
#
output "openwebui_client_id" {
  description = "OpenWebUI OIDC client ID"
  value       = zitadel_application_oidc.openwebui.client_id
  sensitive   = true
}

output "openwebui_client_secret" {
  description = "OpenWebUI OIDC client secret"
  value       = zitadel_application_oidc.openwebui.client_secret
  sensitive   = true
}

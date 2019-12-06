# Configure the Terraform Enterprise Provider
provider "tfe" {
  hostname = "${var.tfe_hostname}"
  token    = "${var.tfe_token}"
}

resource "tfe_oauth_client" "ado_server" {
  organization     = "hashicorp"
  api_url          = "${var.ado_server_hostname}"
  http_url         = "${var.ado_server_hostname}"
  oauth_token      = "${var.ado_server_token}"
  service_provider = "ado_server"
}

resource "tfe_oauth_client" "ado_services" {
  organization     = "hashicorp"
  api_url          = "https://dev.azure.com"
  http_url         = "https://dev.azure.com"
  oauth_token      = "${var.ado_services_token}"
  service_provider = "ado_services"
}

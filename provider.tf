provider "vault" {
  address = var.vault_api_url
  auth_login {
    path = "/auth/ldap/login/${var.login_username}"
    parameters = {
      password = var.login_password
    }
  }
}

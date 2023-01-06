# --- root/backends.tf ---

terraform {
  cloud {
    organization = "bryant-logan"

    workspaces {
      name = "mtc-dev"
    }
  }
}
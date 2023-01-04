# --- compute/main.tf ---

resource "random_string" "random" {
    count = 2
  length = 4
  special = false
  upper = false
}
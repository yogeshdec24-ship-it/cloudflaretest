terraform {
  required_version = ">= 1.5.0"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0" # Match your specific provider version requirements
    }
  }
}

provider "cloudflare" {
  # Authentication is implicitly handled via CLOUDFLARE_API_TOKEN environment variable
}

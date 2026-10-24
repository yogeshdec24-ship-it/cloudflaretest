terraform {
  required_version = ">= 1.5.0"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.23"
    }
  }
}

provider "cloudflare" {
  # Authentication comes from CLOUDFLARE_API_TOKEN
}

resource "cloudflare_dns_record" "A" {
  zone_id = var.cloudflare_zone_id
  name    = var.record_name
  type    = "A"
  content = var.record_value
  ttl     = 1
  proxied = true
}

terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.0"
    }
  }
}
resource "cloudflare_dns_record" "A" {
  zone_id = var.cloudflare_zone_id
  name    = var.record_name
  type    = "A"
  content = var.record_value
  ttl     = 1
  proxied = true
}

terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.0"
    }
  }
}
resource "cloudflare_ruleset" "user_agent_block" {
  zone_id     = var.cloudflare_zone_id
  name        = "Custom User Agent Security Rules"
  description = "Managed via Terraform and GitHub Actions"
  kind        = "zone"
  phase       = "http_request_firewall_custom"

  rules {
    action      = "block"
    description = "Block malicious User Agent strings"
    expression  = "(http.user_agent contains \"BadBot/1.0\") or (http.user_agent eq \"EvilCrawler\")"
    enabled     = true
  }
  }

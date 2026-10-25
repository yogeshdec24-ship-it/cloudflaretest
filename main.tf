
terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.0"
    }
  }
}

resource "cloudflare_ruleset" "cache_bypass" {
  zone_id     = var.cloudflare_zone_id
  name        = "Bypass Cache for www.test.com"
  description = "Bypass Cloudflare cache for www.test.com"
  kind        = "zone"
  phase       = "http_request_cache_settings"

  rules = [
    {
      ref         = "bypass_cache_www_test_com"
      description = "Bypass cache for www.test.com"
      expression  = "(http.host eq \"www.test.com\")"
      action      = "set_cache_settings"

      action_parameters = {
        cache = false
      }
    }
  ]
}

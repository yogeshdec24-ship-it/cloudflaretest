variable "cloudflare_zone_id" {
  description = "Cloudflare Zone ID"
  type        = string
}

variable "record_name" {
  description = "DNS record name"
  type        = string
}

variable "record_value" {
  description = "DNS record IP address"
  type        = string
}
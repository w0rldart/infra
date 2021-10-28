variable "do_token" {
  type = string
}

variable "cloudflare_token" {
  type = string
}

variable "region" {
  type    = string
  default = "lon1"
}

variable "name_prefix" {
  type    = string
  default = "terraform"
}
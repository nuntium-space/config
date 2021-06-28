variable "aws" {
  sensitive = true
  type      = object({
    region     = string
    access_key = string
    secret_key = string
  })
}

variable "site" {
  type = object({
    domain = string
  })
}

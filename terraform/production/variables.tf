variable "aws" {
  sensitive = true
  type      = object({
    region     = string
    access_key = string
    secret_key = string
  })
}

variable "db" {
  sensitive = true
  type      = object({
    name = string
    user = string
    pass = string
  })
}

variable "site" {
  type = object({
    domain = string
  })
}

variable "organization_lookup" {
  description = <<EOT
Map of organization_lookup, attributes below
Required:
    - name
EOT

  type = map(object({
    name = string
  }))
}


data "grafana_organization" "organization_lookup" {
  for_each = var.organization_lookup

  name = each.value.name
}


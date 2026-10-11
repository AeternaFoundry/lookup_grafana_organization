output "organization_lookup_id" {
  description = "Map of id values across all organization_lookup, keyed the same as var.organization_lookup except keys with no id are omitted"
  value       = { for k, v in data.grafana_organization.organization_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organization_lookup_admins" {
  description = "Map of admins values across all organization_lookup, keyed the same as var.organization_lookup except keys with no admins are omitted"
  value       = { for k, v in data.grafana_organization.organization_lookup : k => v.admins if v.admins != null && length(v.admins) > 0 }
}
output "organization_lookup_editors" {
  description = "Map of editors values across all organization_lookup, keyed the same as var.organization_lookup except keys with no editors are omitted"
  value       = { for k, v in data.grafana_organization.organization_lookup : k => v.editors if v.editors != null && length(v.editors) > 0 }
}
output "organization_lookup_name" {
  description = "Map of name values across all organization_lookup, keyed the same as var.organization_lookup except keys with no name are omitted"
  value       = { for k, v in data.grafana_organization.organization_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "organization_lookup_viewers" {
  description = "Map of viewers values across all organization_lookup, keyed the same as var.organization_lookup except keys with no viewers are omitted"
  value       = { for k, v in data.grafana_organization.organization_lookup : k => v.viewers if v.viewers != null && length(v.viewers) > 0 }
}


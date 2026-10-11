output "kibana_security_entity_store_status_lookup_engines" {
  description = "Map of engines values across all kibana_security_entity_store_status_lookup, keyed the same as var.kibana_security_entity_store_status_lookup except keys with no engines are omitted"
  value       = { for k, v in data.elasticstack_kibana_security_entity_store_status.kibana_security_entity_store_status_lookup : k => v.engines if v.engines != null && length(v.engines) > 0 }
}
output "kibana_security_entity_store_status_lookup_include_components" {
  description = "Map of include_components values across all kibana_security_entity_store_status_lookup, keyed the same as var.kibana_security_entity_store_status_lookup except keys with no include_components are omitted"
  value       = { for k, v in data.elasticstack_kibana_security_entity_store_status.kibana_security_entity_store_status_lookup : k => v.include_components if v.include_components != null }
}
output "kibana_security_entity_store_status_lookup_installed" {
  description = "Map of installed values across all kibana_security_entity_store_status_lookup, keyed the same as var.kibana_security_entity_store_status_lookup except keys with no installed are omitted"
  value       = { for k, v in data.elasticstack_kibana_security_entity_store_status.kibana_security_entity_store_status_lookup : k => v.installed if v.installed != null }
}
output "kibana_security_entity_store_status_lookup_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_security_entity_store_status_lookup, keyed the same as var.kibana_security_entity_store_status_lookup except keys with no kibana_connection are omitted"
  value       = { for k, v in data.elasticstack_kibana_security_entity_store_status.kibana_security_entity_store_status_lookup : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_security_entity_store_status_lookup_overall_status" {
  description = "Map of overall_status values across all kibana_security_entity_store_status_lookup, keyed the same as var.kibana_security_entity_store_status_lookup except keys with no overall_status are omitted"
  value       = { for k, v in data.elasticstack_kibana_security_entity_store_status.kibana_security_entity_store_status_lookup : k => v.overall_status if v.overall_status != null && length(v.overall_status) > 0 }
}
output "kibana_security_entity_store_status_lookup_space_id" {
  description = "Map of space_id values across all kibana_security_entity_store_status_lookup, keyed the same as var.kibana_security_entity_store_status_lookup except keys with no space_id are omitted"
  value       = { for k, v in data.elasticstack_kibana_security_entity_store_status.kibana_security_entity_store_status_lookup : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}
output "kibana_security_entity_store_status_lookup_status_json" {
  description = "Map of status_json values across all kibana_security_entity_store_status_lookup, keyed the same as var.kibana_security_entity_store_status_lookup except keys with no status_json are omitted"
  value       = { for k, v in data.elasticstack_kibana_security_entity_store_status.kibana_security_entity_store_status_lookup : k => v.status_json if v.status_json != null && length(v.status_json) > 0 }
}


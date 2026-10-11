data "elasticstack_kibana_security_entity_store_status" "kibana_security_entity_store_status_lookup" {
  for_each = var.kibana_security_entity_store_status_lookup

  include_components = each.value.include_components
  space_id           = each.value.space_id

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}


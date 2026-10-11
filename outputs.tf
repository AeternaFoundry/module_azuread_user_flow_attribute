output "user_flow_attributes_id" {
  description = "Map of id values across all user_flow_attributes, keyed the same as var.user_flow_attributes"
  value       = { for k, v in azuread_user_flow_attribute.user_flow_attributes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_flow_attributes_attribute_type" {
  description = "Map of attribute_type values across all user_flow_attributes, keyed the same as var.user_flow_attributes"
  value       = { for k, v in azuread_user_flow_attribute.user_flow_attributes : k => v.attribute_type if v.attribute_type != null && length(v.attribute_type) > 0 }
}
output "user_flow_attributes_data_type" {
  description = "Map of data_type values across all user_flow_attributes, keyed the same as var.user_flow_attributes"
  value       = { for k, v in azuread_user_flow_attribute.user_flow_attributes : k => v.data_type if v.data_type != null && length(v.data_type) > 0 }
}
output "user_flow_attributes_description" {
  description = "Map of description values across all user_flow_attributes, keyed the same as var.user_flow_attributes"
  value       = { for k, v in azuread_user_flow_attribute.user_flow_attributes : k => v.description if v.description != null && length(v.description) > 0 }
}
output "user_flow_attributes_display_name" {
  description = "Map of display_name values across all user_flow_attributes, keyed the same as var.user_flow_attributes"
  value       = { for k, v in azuread_user_flow_attribute.user_flow_attributes : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}


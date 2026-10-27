output "user_flow_attributes_id" {
  description = "Map of id values across all user_flow_attributes, keyed the same as var.user_flow_attributes"
  value       = { for k, v in azuread_user_flow_attribute.user_flow_attributes : k => v.id }
}
output "user_flow_attributes_attribute_type" {
  description = "Map of attribute_type values across all user_flow_attributes, keyed the same as var.user_flow_attributes"
  value       = { for k, v in azuread_user_flow_attribute.user_flow_attributes : k => v.attribute_type }
}
output "user_flow_attributes_data_type" {
  description = "Map of data_type values across all user_flow_attributes, keyed the same as var.user_flow_attributes"
  value       = { for k, v in azuread_user_flow_attribute.user_flow_attributes : k => v.data_type }
}
output "user_flow_attributes_description" {
  description = "Map of description values across all user_flow_attributes, keyed the same as var.user_flow_attributes"
  value       = { for k, v in azuread_user_flow_attribute.user_flow_attributes : k => v.description }
}
output "user_flow_attributes_display_name" {
  description = "Map of display_name values across all user_flow_attributes, keyed the same as var.user_flow_attributes"
  value       = { for k, v in azuread_user_flow_attribute.user_flow_attributes : k => v.display_name }
}


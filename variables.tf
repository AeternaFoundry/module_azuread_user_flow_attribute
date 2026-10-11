variable "user_flow_attributes" {
  description = <<EOT
Map of user_flow_attributes, attributes below
Required:
    - data_type
    - description
    - display_name
EOT

  type = map(object({
    data_type    = string
    description  = string
    display_name = string
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


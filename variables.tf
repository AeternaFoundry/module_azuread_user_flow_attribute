variable "user_flow_attributes" {
  description = <<EOT
Map of user_flow_attributes, attributes below
Required:
    - data_type
    - description
    - display_name
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    data_type    = string
    description  = string
    display_name = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.user_flow_attributes : (
        contains(["boolean", "dateTime", "int64", "string", "stringCollection"], v.data_type)
      )
    ])
    error_message = "must be one of: \"boolean\", \"dateTime\", \"int64\", \"string\", \"stringCollection\""
  }
}


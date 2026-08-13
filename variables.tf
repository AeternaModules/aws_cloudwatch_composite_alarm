variable "cloudwatch_composite_alarms" {
  description = <<EOT
Map of cloudwatch_composite_alarms, attributes below
Required:
    - alarm_name
    - alarm_rule
Optional:
    - actions_enabled
    - alarm_actions
    - alarm_description
    - insufficient_data_actions
    - ok_actions
    - region
    - tags
    - tags_all
    - actions_suppressor (block):
        - alarm (required)
        - extension_period (required)
        - wait_period (required)
EOT

  type = map(object({
    alarm_name                = string
    alarm_rule                = string
    actions_enabled           = optional(bool)
    alarm_actions             = optional(set(string))
    alarm_description         = optional(string)
    insufficient_data_actions = optional(set(string))
    ok_actions                = optional(set(string))
    region                    = optional(string)
    tags                      = optional(map(string))
    tags_all                  = optional(map(string))
    actions_suppressor = optional(object({
      alarm            = string
      extension_period = number
      wait_period      = number
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloudwatch_composite_alarms : (
        v.alarm_description == null || (length(v.alarm_description) >= 0 && length(v.alarm_description) <= 1024)
      )
    ])
    error_message = "must be between 0 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudwatch_composite_alarms : (
        length(v.alarm_name) >= 0 && length(v.alarm_name) <= 255
      )
    ])
    error_message = "must be between 0 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudwatch_composite_alarms : (
        length(v.alarm_rule) >= 1 && length(v.alarm_rule) <= 10240
      )
    ])
    error_message = "must be between 1 and 10240 characters"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


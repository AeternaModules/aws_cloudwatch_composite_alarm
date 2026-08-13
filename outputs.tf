output "cloudwatch_composite_alarms_id" {
  description = "Map of id values across all cloudwatch_composite_alarms, keyed the same as var.cloudwatch_composite_alarms"
  value       = { for k, v in aws_cloudwatch_composite_alarm.cloudwatch_composite_alarms : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudwatch_composite_alarms_actions_enabled" {
  description = "Map of actions_enabled values across all cloudwatch_composite_alarms, keyed the same as var.cloudwatch_composite_alarms"
  value       = { for k, v in aws_cloudwatch_composite_alarm.cloudwatch_composite_alarms : k => v.actions_enabled if v.actions_enabled != null }
}
output "cloudwatch_composite_alarms_actions_suppressor" {
  description = "Map of actions_suppressor values across all cloudwatch_composite_alarms, keyed the same as var.cloudwatch_composite_alarms"
  value       = { for k, v in aws_cloudwatch_composite_alarm.cloudwatch_composite_alarms : k => v.actions_suppressor if v.actions_suppressor != null && length(v.actions_suppressor) > 0 }
}
output "cloudwatch_composite_alarms_alarm_actions" {
  description = "Map of alarm_actions values across all cloudwatch_composite_alarms, keyed the same as var.cloudwatch_composite_alarms"
  value       = { for k, v in aws_cloudwatch_composite_alarm.cloudwatch_composite_alarms : k => v.alarm_actions if v.alarm_actions != null && length(v.alarm_actions) > 0 }
}
output "cloudwatch_composite_alarms_alarm_description" {
  description = "Map of alarm_description values across all cloudwatch_composite_alarms, keyed the same as var.cloudwatch_composite_alarms"
  value       = { for k, v in aws_cloudwatch_composite_alarm.cloudwatch_composite_alarms : k => v.alarm_description if v.alarm_description != null && length(v.alarm_description) > 0 }
}
output "cloudwatch_composite_alarms_alarm_name" {
  description = "Map of alarm_name values across all cloudwatch_composite_alarms, keyed the same as var.cloudwatch_composite_alarms"
  value       = { for k, v in aws_cloudwatch_composite_alarm.cloudwatch_composite_alarms : k => v.alarm_name if v.alarm_name != null && length(v.alarm_name) > 0 }
}
output "cloudwatch_composite_alarms_alarm_rule" {
  description = "Map of alarm_rule values across all cloudwatch_composite_alarms, keyed the same as var.cloudwatch_composite_alarms"
  value       = { for k, v in aws_cloudwatch_composite_alarm.cloudwatch_composite_alarms : k => v.alarm_rule if v.alarm_rule != null && length(v.alarm_rule) > 0 }
}
output "cloudwatch_composite_alarms_arn" {
  description = "Map of arn values across all cloudwatch_composite_alarms, keyed the same as var.cloudwatch_composite_alarms"
  value       = { for k, v in aws_cloudwatch_composite_alarm.cloudwatch_composite_alarms : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudwatch_composite_alarms_insufficient_data_actions" {
  description = "Map of insufficient_data_actions values across all cloudwatch_composite_alarms, keyed the same as var.cloudwatch_composite_alarms"
  value       = { for k, v in aws_cloudwatch_composite_alarm.cloudwatch_composite_alarms : k => v.insufficient_data_actions if v.insufficient_data_actions != null && length(v.insufficient_data_actions) > 0 }
}
output "cloudwatch_composite_alarms_ok_actions" {
  description = "Map of ok_actions values across all cloudwatch_composite_alarms, keyed the same as var.cloudwatch_composite_alarms"
  value       = { for k, v in aws_cloudwatch_composite_alarm.cloudwatch_composite_alarms : k => v.ok_actions if v.ok_actions != null && length(v.ok_actions) > 0 }
}
output "cloudwatch_composite_alarms_region" {
  description = "Map of region values across all cloudwatch_composite_alarms, keyed the same as var.cloudwatch_composite_alarms"
  value       = { for k, v in aws_cloudwatch_composite_alarm.cloudwatch_composite_alarms : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudwatch_composite_alarms_tags" {
  description = "Map of tags values across all cloudwatch_composite_alarms, keyed the same as var.cloudwatch_composite_alarms"
  value       = { for k, v in aws_cloudwatch_composite_alarm.cloudwatch_composite_alarms : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cloudwatch_composite_alarms_tags_all" {
  description = "Map of tags_all values across all cloudwatch_composite_alarms, keyed the same as var.cloudwatch_composite_alarms"
  value       = { for k, v in aws_cloudwatch_composite_alarm.cloudwatch_composite_alarms : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}


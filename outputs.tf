output "data_loss_prevention_stored_info_types_id" {
  description = "Map of id values across all data_loss_prevention_stored_info_types, keyed the same as var.data_loss_prevention_stored_info_types except keys with no id are omitted"
  value       = { for k, v in google_data_loss_prevention_stored_info_type.data_loss_prevention_stored_info_types : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_loss_prevention_stored_info_types_deletion_policy" {
  description = "Map of deletion_policy values across all data_loss_prevention_stored_info_types, keyed the same as var.data_loss_prevention_stored_info_types except keys with no deletion_policy are omitted"
  value       = { for k, v in google_data_loss_prevention_stored_info_type.data_loss_prevention_stored_info_types : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "data_loss_prevention_stored_info_types_description" {
  description = "Map of description values across all data_loss_prevention_stored_info_types, keyed the same as var.data_loss_prevention_stored_info_types except keys with no description are omitted"
  value       = { for k, v in google_data_loss_prevention_stored_info_type.data_loss_prevention_stored_info_types : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_loss_prevention_stored_info_types_dictionary" {
  description = "Map of dictionary values across all data_loss_prevention_stored_info_types, keyed the same as var.data_loss_prevention_stored_info_types except keys with no dictionary are omitted"
  value       = { for k, v in google_data_loss_prevention_stored_info_type.data_loss_prevention_stored_info_types : k => one(v.dictionary) if v.dictionary != null && length(v.dictionary) > 0 }
}
output "data_loss_prevention_stored_info_types_display_name" {
  description = "Map of display_name values across all data_loss_prevention_stored_info_types, keyed the same as var.data_loss_prevention_stored_info_types except keys with no display_name are omitted"
  value       = { for k, v in google_data_loss_prevention_stored_info_type.data_loss_prevention_stored_info_types : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "data_loss_prevention_stored_info_types_large_custom_dictionary" {
  description = "Map of large_custom_dictionary values across all data_loss_prevention_stored_info_types, keyed the same as var.data_loss_prevention_stored_info_types except keys with no large_custom_dictionary are omitted"
  value       = { for k, v in google_data_loss_prevention_stored_info_type.data_loss_prevention_stored_info_types : k => one(v.large_custom_dictionary) if v.large_custom_dictionary != null && length(v.large_custom_dictionary) > 0 }
}
output "data_loss_prevention_stored_info_types_name" {
  description = "Map of name values across all data_loss_prevention_stored_info_types, keyed the same as var.data_loss_prevention_stored_info_types except keys with no name are omitted"
  value       = { for k, v in google_data_loss_prevention_stored_info_type.data_loss_prevention_stored_info_types : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_loss_prevention_stored_info_types_parent" {
  description = "Map of parent values across all data_loss_prevention_stored_info_types, keyed the same as var.data_loss_prevention_stored_info_types except keys with no parent are omitted"
  value       = { for k, v in google_data_loss_prevention_stored_info_type.data_loss_prevention_stored_info_types : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "data_loss_prevention_stored_info_types_regex" {
  description = "Map of regex values across all data_loss_prevention_stored_info_types, keyed the same as var.data_loss_prevention_stored_info_types except keys with no regex are omitted"
  value       = { for k, v in google_data_loss_prevention_stored_info_type.data_loss_prevention_stored_info_types : k => one(v.regex) if v.regex != null && length(v.regex) > 0 }
}
output "data_loss_prevention_stored_info_types_stored_info_type_id" {
  description = "Map of stored_info_type_id values across all data_loss_prevention_stored_info_types, keyed the same as var.data_loss_prevention_stored_info_types except keys with no stored_info_type_id are omitted"
  value       = { for k, v in google_data_loss_prevention_stored_info_type.data_loss_prevention_stored_info_types : k => v.stored_info_type_id if v.stored_info_type_id != null && length(v.stored_info_type_id) > 0 }
}


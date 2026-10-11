resource "google_data_loss_prevention_stored_info_type" "data_loss_prevention_stored_info_types" {
  for_each = var.data_loss_prevention_stored_info_types

  parent              = each.value.parent
  deletion_policy     = each.value.deletion_policy
  description         = each.value.description
  display_name        = each.value.display_name
  stored_info_type_id = each.value.stored_info_type_id

  dynamic "dictionary" {
    for_each = each.value.dictionary != null ? [each.value.dictionary] : []
    content {
      dynamic "cloud_storage_path" {
        for_each = dictionary.value.cloud_storage_path != null ? [dictionary.value.cloud_storage_path] : []
        content {
          path = cloud_storage_path.value.path
        }
      }
      dynamic "word_list" {
        for_each = dictionary.value.word_list != null ? [dictionary.value.word_list] : []
        content {
          words = word_list.value.words
        }
      }
    }
  }

  dynamic "large_custom_dictionary" {
    for_each = each.value.large_custom_dictionary != null ? [each.value.large_custom_dictionary] : []
    content {
      dynamic "big_query_field" {
        for_each = large_custom_dictionary.value.big_query_field != null ? [large_custom_dictionary.value.big_query_field] : []
        content {
          field {
            name = big_query_field.value.field.name
          }
          table {
            dataset_id = big_query_field.value.table.dataset_id
            project_id = big_query_field.value.table.project_id
            table_id   = big_query_field.value.table.table_id
          }
        }
      }
      dynamic "cloud_storage_file_set" {
        for_each = large_custom_dictionary.value.cloud_storage_file_set != null ? [large_custom_dictionary.value.cloud_storage_file_set] : []
        content {
          url = cloud_storage_file_set.value.url
        }
      }
      output_path {
        path = large_custom_dictionary.value.output_path.path
      }
    }
  }

  dynamic "regex" {
    for_each = each.value.regex != null ? [each.value.regex] : []
    content {
      group_indexes = regex.value.group_indexes
      pattern       = regex.value.pattern
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


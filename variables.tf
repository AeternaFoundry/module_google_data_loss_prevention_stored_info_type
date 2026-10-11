variable "data_loss_prevention_stored_info_types" {
  description = <<EOT
Map of data_loss_prevention_stored_info_types, attributes below
Required:
    - parent
Optional:
    - deletion_policy
    - description
    - display_name
    - stored_info_type_id
    - dictionary (block):
        - cloud_storage_path (optional, block):
            - path (required)
        - word_list (optional, block):
            - words (required)
    - large_custom_dictionary (block):
        - big_query_field (optional, block):
            - field (required, block):
                - name (required)
            - table (required, block):
                - dataset_id (required)
                - project_id (required)
                - table_id (required)
        - cloud_storage_file_set (optional, block):
            - url (required)
        - output_path (required, block):
            - path (required)
    - regex (block):
        - group_indexes (optional)
        - pattern (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    parent              = string
    deletion_policy     = optional(string)
    description         = optional(string)
    display_name        = optional(string)
    stored_info_type_id = optional(string)
    dictionary = optional(object({
      cloud_storage_path = optional(object({
        path = string
      }))
      word_list = optional(object({
        words = list(string)
      }))
    }))
    large_custom_dictionary = optional(object({
      big_query_field = optional(object({
        field = object({
          name = string
        })
        table = object({
          dataset_id = string
          project_id = string
          table_id   = string
        })
      }))
      cloud_storage_file_set = optional(object({
        url = string
      }))
      output_path = object({
        path = string
      })
    }))
    regex = optional(object({
      group_indexes = optional(list(number))
      pattern       = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}


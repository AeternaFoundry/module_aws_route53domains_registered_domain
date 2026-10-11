variable "route53domains_registered_domains" {
  description = <<EOT
Map of route53domains_registered_domains, attributes below
Required:
    - domain_name
Optional:
    - admin_privacy
    - auto_renew
    - billing_privacy
    - registrant_privacy
    - tags
    - tags_all
    - tech_privacy
    - transfer_lock
    - admin_contact (block):
        - address_line_1 (optional)
        - address_line_2 (optional)
        - city (optional)
        - contact_type (optional)
        - country_code (optional)
        - email (optional)
        - extra_params (optional)
        - fax (optional)
        - first_name (optional)
        - last_name (optional)
        - organization_name (optional)
        - phone_number (optional)
        - state (optional)
        - zip_code (optional)
    - billing_contact (block):
        - address_line_1 (optional)
        - address_line_2 (optional)
        - city (optional)
        - contact_type (optional)
        - country_code (optional)
        - email (optional)
        - extra_params (optional)
        - fax (optional)
        - first_name (optional)
        - last_name (optional)
        - organization_name (optional)
        - phone_number (optional)
        - state (optional)
        - zip_code (optional)
    - name_server (block):
        - glue_ips (optional)
        - name (required)
    - registrant_contact (block):
        - address_line_1 (optional)
        - address_line_2 (optional)
        - city (optional)
        - contact_type (optional)
        - country_code (optional)
        - email (optional)
        - extra_params (optional)
        - fax (optional)
        - first_name (optional)
        - last_name (optional)
        - organization_name (optional)
        - phone_number (optional)
        - state (optional)
        - zip_code (optional)
    - tech_contact (block):
        - address_line_1 (optional)
        - address_line_2 (optional)
        - city (optional)
        - contact_type (optional)
        - country_code (optional)
        - email (optional)
        - extra_params (optional)
        - fax (optional)
        - first_name (optional)
        - last_name (optional)
        - organization_name (optional)
        - phone_number (optional)
        - state (optional)
        - zip_code (optional)
EOT

  type = map(object({
    domain_name        = string
    admin_privacy      = optional(bool)
    auto_renew         = optional(bool)
    billing_privacy    = optional(bool)
    registrant_privacy = optional(bool)
    tags               = optional(map(string))
    tags_all           = optional(map(string))
    tech_privacy       = optional(bool)
    transfer_lock      = optional(bool)
    admin_contact = optional(object({
      address_line_1    = optional(string)
      address_line_2    = optional(string)
      city              = optional(string)
      contact_type      = optional(string)
      country_code      = optional(string)
      email             = optional(string)
      extra_params      = optional(map(string))
      fax               = optional(string)
      first_name        = optional(string)
      last_name         = optional(string)
      organization_name = optional(string)
      phone_number      = optional(string)
      state             = optional(string)
      zip_code          = optional(string)
    }))
    billing_contact = optional(object({
      address_line_1    = optional(string)
      address_line_2    = optional(string)
      city              = optional(string)
      contact_type      = optional(string)
      country_code      = optional(string)
      email             = optional(string)
      extra_params      = optional(map(string))
      fax               = optional(string)
      first_name        = optional(string)
      last_name         = optional(string)
      organization_name = optional(string)
      phone_number      = optional(string)
      state             = optional(string)
      zip_code          = optional(string)
    }))
    name_server = optional(list(object({
      glue_ips = optional(set(string))
      name     = string
    })))
    registrant_contact = optional(object({
      address_line_1    = optional(string)
      address_line_2    = optional(string)
      city              = optional(string)
      contact_type      = optional(string)
      country_code      = optional(string)
      email             = optional(string)
      extra_params      = optional(map(string))
      fax               = optional(string)
      first_name        = optional(string)
      last_name         = optional(string)
      organization_name = optional(string)
      phone_number      = optional(string)
      state             = optional(string)
      zip_code          = optional(string)
    }))
    tech_contact = optional(object({
      address_line_1    = optional(string)
      address_line_2    = optional(string)
      city              = optional(string)
      contact_type      = optional(string)
      country_code      = optional(string)
      email             = optional(string)
      extra_params      = optional(map(string))
      fax               = optional(string)
      first_name        = optional(string)
      last_name         = optional(string)
      organization_name = optional(string)
      phone_number      = optional(string)
      state             = optional(string)
      zip_code          = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.route53domains_registered_domains : (
        v.name_server == null || (length(v.name_server) <= 6)
      )
    ])
    error_message = "Each name_server list must contain at most 6 items"
  }
  # Note: 15 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


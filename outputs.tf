output "route53domains_registered_domains_id" {
  description = "Map of id values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route53domains_registered_domains_abuse_contact_email" {
  description = "Map of abuse_contact_email values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.abuse_contact_email if v.abuse_contact_email != null && length(v.abuse_contact_email) > 0 }
}
output "route53domains_registered_domains_abuse_contact_phone" {
  description = "Map of abuse_contact_phone values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.abuse_contact_phone if v.abuse_contact_phone != null && length(v.abuse_contact_phone) > 0 }
}
output "route53domains_registered_domains_admin_contact" {
  description = "Map of admin_contact values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => one(v.admin_contact) if v.admin_contact != null && length(v.admin_contact) > 0 }
}
output "route53domains_registered_domains_admin_privacy" {
  description = "Map of admin_privacy values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.admin_privacy if v.admin_privacy != null }
}
output "route53domains_registered_domains_auto_renew" {
  description = "Map of auto_renew values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.auto_renew if v.auto_renew != null }
}
output "route53domains_registered_domains_billing_contact" {
  description = "Map of billing_contact values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => one(v.billing_contact) if v.billing_contact != null && length(v.billing_contact) > 0 }
}
output "route53domains_registered_domains_billing_privacy" {
  description = "Map of billing_privacy values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.billing_privacy if v.billing_privacy != null }
}
output "route53domains_registered_domains_creation_date" {
  description = "Map of creation_date values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.creation_date if v.creation_date != null && length(v.creation_date) > 0 }
}
output "route53domains_registered_domains_domain_name" {
  description = "Map of domain_name values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "route53domains_registered_domains_expiration_date" {
  description = "Map of expiration_date values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.expiration_date if v.expiration_date != null && length(v.expiration_date) > 0 }
}
output "route53domains_registered_domains_name_server" {
  description = "Map of name_server values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.name_server if v.name_server != null && length(v.name_server) > 0 }
}
output "route53domains_registered_domains_registrant_contact" {
  description = "Map of registrant_contact values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => one(v.registrant_contact) if v.registrant_contact != null && length(v.registrant_contact) > 0 }
}
output "route53domains_registered_domains_registrant_privacy" {
  description = "Map of registrant_privacy values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.registrant_privacy if v.registrant_privacy != null }
}
output "route53domains_registered_domains_registrar_name" {
  description = "Map of registrar_name values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.registrar_name if v.registrar_name != null && length(v.registrar_name) > 0 }
}
output "route53domains_registered_domains_registrar_url" {
  description = "Map of registrar_url values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.registrar_url if v.registrar_url != null && length(v.registrar_url) > 0 }
}
output "route53domains_registered_domains_reseller" {
  description = "Map of reseller values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.reseller if v.reseller != null && length(v.reseller) > 0 }
}
output "route53domains_registered_domains_status_list" {
  description = "Map of status_list values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.status_list if v.status_list != null && length(v.status_list) > 0 }
}
output "route53domains_registered_domains_tags" {
  description = "Map of tags values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "route53domains_registered_domains_tags_all" {
  description = "Map of tags_all values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "route53domains_registered_domains_tech_contact" {
  description = "Map of tech_contact values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => one(v.tech_contact) if v.tech_contact != null && length(v.tech_contact) > 0 }
}
output "route53domains_registered_domains_tech_privacy" {
  description = "Map of tech_privacy values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.tech_privacy if v.tech_privacy != null }
}
output "route53domains_registered_domains_transfer_lock" {
  description = "Map of transfer_lock values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.transfer_lock if v.transfer_lock != null }
}
output "route53domains_registered_domains_updated_date" {
  description = "Map of updated_date values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.updated_date if v.updated_date != null && length(v.updated_date) > 0 }
}
output "route53domains_registered_domains_whois_server" {
  description = "Map of whois_server values across all route53domains_registered_domains, keyed the same as var.route53domains_registered_domains"
  value       = { for k, v in aws_route53domains_registered_domain.route53domains_registered_domains : k => v.whois_server if v.whois_server != null && length(v.whois_server) > 0 }
}


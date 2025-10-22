output "env_dev_instance" {
  value = lookup(var.env_settings, "aaa", "N/A")
}
output "env_prod_instance_or_default" {
  value = lookup(var.env_settings, "prod", "default_instance")
}
output "toronto_airport_code" {
  value = lookup(var.city_codes, "Toronto")
}
output "ottawa_airport_code_or_na" {
  value = lookup(var.city_codes, "Ottawa", "N/A")
}
output "currency_canada" {
  value = lookup(var.country_currency, "Canada")
}
output "currency_brazil_or_unknown" {
  value = lookup(var.country_currency, "Brazil", "Unknown")
}
output "formatted_env_dev_instance" {
  value = format("Environment dev uses %s", lookup(var.env_settings, "dev", "unknown_instance"))
}
output "resolved_airport_codes" {
  value = [for c in var.request_cities : lookup(var.city_codes, c, "XXX")]
}
output "stage_key_presence" {
  value = lookup(var.env_settings, "stage", local.sentinel_missing) != local.sentinel_missing ? "Found" : "Not Found"
}
output "currency_mexico_upper" {
  value = upper(lookup(var.country_currency, "Mexico", "Unknown"))
}
output "currency_mexico_upper" {
  value = upper(lookup(var.country_currency, "Mexico", "Unknown"))
}

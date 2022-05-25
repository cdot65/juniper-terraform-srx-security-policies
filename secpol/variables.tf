
variable "apply_group_name" {
  type        = string
  description = "Name of our apply-group for the apply group stanza"
  // default     = "cdot65_ipsec"
}


variable "from__zone__name" {
  type        = string
  description = "set security policy from zone {from__zone__name} to zone {to__zone__name}"
  // default     = "cdot65_ike_gateway"
}

variable "to__zone__name" {
  type        = string
  description = "set security policy from zone {from__zone__name} to zone {to__zone__name}"
  // default     = "56.0.0.1"
}

variable "policy_name" {
  type        = string
  description = "set security policy from zone {from__zone__name} to zone {to__zone__name} policy {policy_name}"
  // default     = "ge-0/0/0.0"
}

variable "description" {
  type        = string
  description = "set security policy from zone {from__zone__name} to zone {to__zone__name} policy {policy_name} description {description}"
  // default     = "cdot65_ike_proposal"
}

variable "application" {
  type        = string
  description = "set security policy from zone {from__zone__name} to zone {to__zone__name} policy {policy_name} match application {application}"
  // default     = "sha-256"
}

variable "source__address" {
  type        = string
  description = "set security policy from zone {from__zone__name} to zone {to__zone__name} policy {policy_name} match source-address {source__address}"
  // default     = "pre-shared-keys"
}

variable "destination__address" {
  type        = string
  description = "set security policy from zone {from__zone__name} to zone {to__zone__name} policy {policy_name} match destination-address {destination__address}"
  // default     = "DH14-aes-128-sha-256"
}


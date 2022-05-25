terraform {
  required_providers {
    junos-security-policies = {
      source  = "cdot65/junos-security-policies"
      version = "0.0.1"
    }
  }
}

provider "junos-security-policies" {
  host     = "192.168.110.10"
  port     = var.juniper_ssh_port
  sshkey   = var.juniper_ssh_key
  username = var.juniper_user_name
  password = var.juniper_user_password
}

module "security-policies" {
  // name of our configuration apply group
  apply_group_name = "test_sec_policy"

  // Security policy 1
  from__zone__name     = "ZONE_TRUST"
  to__zone__name       = "ZONE_UNTRUST"
  policy_name          = "TF_SEC_POLICY"
  description          = "Test Security Policy test"
  application          = "any"
  source__address      = "any"
  destination__address = "any"

  // passing information into our provider
  source     = "./secpol"
  providers  = { junos-security-policies = junos-security-policies }
  depends_on = [junos-security-policies_destroycommit.commit-main]
}

resource "junos-security-policies_commit" "commit-main" {
  resource_name = "commit"
  depends_on    = [module.security-policies]
}

resource "junos-security-policies_destroycommit" "commit-main" {
  resource_name = "destroycommit"
}

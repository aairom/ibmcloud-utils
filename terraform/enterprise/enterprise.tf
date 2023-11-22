data "ibm_enterprises" "enterprise" {
}

resource "ibm_enterprise_account" "enterprise_account" {
  parent = data.ibm_enterprises.enterprise.id
  name = "new-child-tf-account"
  owner_iam_id = "lionel.mace@fr.ibm.com"
  traits {
    mfa = "NONE"
    enterprise_iam_managed = true
  }
}
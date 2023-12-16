##############################################################################
# IBM Cloud Provider
##############################################################################

terraform {
  required_version = ">=1.5, < 2.0.0"
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "1.60.1"
    }
    logdna = {
      source  = "logdna/logdna"
      version = ">= 1.14.2"
    }
    http-full = {
      source = "salrashid123/http-full"
    }
  }
}

provider "http-full" {}

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.region
}

##############################################################################
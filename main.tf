locals {
    version_tag = {
        wkbweb_azure_resource_group = "v1.0.0"
    }
}

provider "azurerm" {
    version     = "~> 2.20.0"
    features {}
}

module "namespace" {
    source      = "github.com/bgblanch/namespace"
    name        = var.name
    namespace   = var.namespace
    separator   = "-"
}

resource "azurerm_resource_group" "resource_group" {
    name        = module.namespace.namespace_result
    location    = var.location
    tags        = merge(var.global_tags, var.tags, local.version_tag)
}
locals {
    version_tag = {
        azure_resource_group = "v1.0.0"
    }
}

module "namespace" {
    source      = "github.com/bgblanch/namespace"
    name        = "${var.name}"
    namespace   = "${var.namespace}"
    separator   = "-"
}

resource "azurerm_resource_group" "resource_group" {
    name        = "${module.namespace.result}"
    location    = "${var.location}"
    tags        = "${merge(var.global_tags, var.tags, local.version_tag)}"
}
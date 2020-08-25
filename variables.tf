variable "name" {
    description     = "Name of the resource group"
    default         = "default"
}

variable "location" {
    description     = "Azure location region to provision the resource"
    default         = "centralus"
}

variable "namespace" {
    description     = "Namespace for this terraform run"
    default         = ""
}

variable "tags" {
    description     = "Map of tags to apply to the resource group"
    type            = "map"
    default         = {}
}

variable "global_tags" {
    description     = "Map of tags to apply to all resources that have tags parameters"
    type            = "map"
    default         = {}
}
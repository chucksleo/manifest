# variables.tf

variable "apiVersion" {
  type        = string
  description = "The API version of the Kubernetes resource."
  default     = "v1"
}

variable "kind" {
  type        = string
  description = "The kind of the Kubernetes resource."
  default     = "ConfigMap"
}

variable "metadata" {
  type        = map(any)
  description = "The metadata for the Kubernetes resource."
  default = {
    name      = "test-config"
    namespace = "default"
  }
}

variable "name" {
  type        = string
  description = "The name of the Kubernetes resource."
  default     = "test-config"
}

variable "namespace" {
  type        = string
  description = "The namespace of the Kubernetes resource."
  default     = "default"
}

variable "data" {
  type        = map(string)
  description = "The data for the ConfigMap."
  default = {
    foo = "bar"
  }
}

variable "kubernetes_manifest" {
  type        = map(any)
  description = "The Kubernetes manifest object for the ConfigMap resource."
  default = {}
  # default = {
  #   "apiVersion" = "v1"
  #   "kind"       = "ConfigMap"
  #   "metadata" = {
  #     "name"      = "test-config"
  #     "namespace" = "default"
  #   }
}



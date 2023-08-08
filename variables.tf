# variable "deployment_name" {
#   description = "The name of the deployment"
#   type        = string
# }

# variable "replicas" {
#   description = "The number of replicas for the deployment"
#   type        = number
# }

# variable "container_image" {
#   description = "The container image for the deployment"
#   type        = string
# }

# variable "container_port" {
#   description = "The container port to expose"
#   type        = number
# }

# variable "service_name" {
#   description = "The name of the service"
#   type        = string
# }

# variable "labels" {
#   description = "Labels to attach to resources"
#   type        = map(string)
#   default     = {}
# }

# variable "annotations" {
#   description = "Annotations to attach to resources"
#   type        = map(string)
#   default     = {}
# }

# variable "namespace" {
#     description = "The namespace where the resources will be deployed"
#     type = string
#     default = "default"
# }

# variable "api_version" {
#   description = "The Kubernetes API version for the resources"
#   type        = string
#   default     = "apps/v1"
# }

variable "configmap_manifest" {
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
variable "data" {
  description = "A map of key-value pairs that will be stored in the manifest"
  type        = map(string)
  default     = {}
}

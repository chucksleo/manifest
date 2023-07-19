variable "deployment_name" {
  description = "The name of the deployment"
  type        = string
}

variable "replicas" {
  description = "The number of replicas for the deployment"
  type        = number
}

variable "container_image" {
  description = "The container image for the deployment"
  type        = string
}

variable "container_port" {
  description = "The container port to expose"
  type        = number
}

variable "service_name" {
  description = "The name of the service"
  type        = string
}

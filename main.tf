# resource "kubernetes_manifest" "my_manifest" {
#   api_version = var.api_version
#   kind        = var.kind

#   metadata {
#     name        = var.deployment_name
#     namespace   = var.namespace  # Use the namespace variable here
#     labels      = var.labels
#     annotations = var.annotations
#   }
#     template {
#       metadata {
#         labels      = var.labels
#         annotations = var.annotations
#       }

#       spec {
#         container {
#           name  = var.deployment_name
#           image = var.container_image
#           ports {
#             container_port = var.container_port
#           }
#         }
#       }
#     }
#   }
# }

# resource "kubernetes_service" "service" {
#   metadata {
#     name        = var.service_name
#     namespace   = var.namespace  # Use the namespace variable here
#     labels      = var.labels
#     annotations = var.annotations
#   }

#   spec {
#     selector = {
#       app = var.deployment_name
#     }

#     port {
#       port        = var.container_port
#       target_port = var.container_port
#     }

#     type = "ClusterIP"
#   }
# }

# resource "kubernetes_labels" "example" {
#   api_version = "v1"
#   kind        = "ConfigMap"
#   metadata {
#     name = "my-config"
#   }
#   labels = {
#     "owner" = "myteam"
#   }
# }
# resource "kubernetes_annotations" "example" {
#   api_version = "v1"
#   kind        = "ConfigMap"
#   metadata {
#     name = "my-config"
#   }
#   annotations = {
#     "owner" = "myteam"
#   }
# }

# main.tf
resource "kubernetes_manifest" "my_manifest" {
  manifest = {
    apiVersion = var.apiVersion
    kind = var.kind
    metadata = var.metadata
    name = var.name
    namespace = var.namespace
    # "apiVersion" = "v1"
    # "kind"       = "ConfigMap"
    # "metadata" = {
    #   "name"      = "test-config"
    #   "namespace" = "default"
    # }
    data = var.data
  }
}

# output "deployment_name" {
#   description = "The name of the deployed deployment"
#   value       = kubernetes_deployment.my_deployment.metadata[0].name
# }

# output "service_name" {
#   description = "The name of the deployed service"
#   value       = kubernetes_service.my_service.metadata[0].name
# }
output "created_kubernetes_metadata" {
  description = "Metadata of the created ConfigMap resource."
  value       = kubernetes_manifest.my_manifest
}
# advanced_example/output.tf

output "configmap_name" {
  description = "The name of the created ConfigMap."
  value       = module.advanced_example.configmap_name
}

output "configmap_namespace" {
  description = "The namespace of the created ConfigMap."
  value       = module.advanced_example.configmap_namespace
}

output "configmap_data" {
  description = "The data of the created ConfigMap."
  value       = module.advanced_example.configmap_data
}

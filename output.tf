output "deployment_name" {
  description = "The name of the deployed deployment"
  value       = kubernetes_deployment.my_deployment.metadata[0].name
}

output "service_name" {
  description = "The name of the deployed service"
  value       = kubernetes_service.my_service.metadata[0].name
}

# Kubernetes Manifest Terraform Module

This Terraform module deploys a Kubernetes Deployment and Service with customizable configurations.

## Usage

```hcl
module "kubernetes_manifest" {
  source = "./path/to/module"
  
  deployment_name   = "my-deployment"
  replicas          = 3
  container_image   = "nginx:latest"
  container_port    = 80
  service_name      = "my-service"
}
```

## Inputs

| Name             | Type         | Required  | Description                             | Default    |
|------------------|--------------|-----------|-----------------------------------------|------------|
| deployment_name  | string       |           | The name of the deployment              |            |
| replicas         | number       |           | The number of replicas for deployment   |            |
| container_image  | string       |           | The container image for deployment      |            |
| container_port   | number       |           | The container port to expose            |            |
| service_name     | string       |           | The name of the service                 |            |

## Outputs

| Name               | Description                         |
|--------------------|-------------------------------------|
| deployment_name    | The name of the deployed deployment |
| service_name       | The name of the deployed service    |


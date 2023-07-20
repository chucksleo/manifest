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
  labels = {
    app     = "my-app"
    version = "1.0"
  }
  annotations = {
    "example.com/author" = "John Doe"
    "example.com/email"  = "john.doe@example.com"
  }
}
```

## Inputs

| Name                  | Type         | Required  | Description                                                           | Default    |
|-----------------------|--------------|-----------|-----------------------------------------------------------------------|------------|
| deployment_name       | string       |    yes    | The name of the deployment                                            |            |
| replicas              | number       |           | The number of replicas for deployment                                 |            |
| container_image       | string       |           | The container image for deployment                                    |            |
| container_port        | number       |           | The container port to expose                                          |            |
| service_name          | string       |           | The name of the service                                               |            |
| namespace             | string       |    yes    | The namespace to deploy resource                                      |  default   |
| labels                | map          |    yes    | Standard metadata of the resource to be annoted                       |     {}     |
| annotations           | map          |    yes    | Annotations to attach to resource                                     |     {}     |

## Outputs

| Name               | Description                         |
|--------------------|-------------------------------------|
| deployment_name    | The name of the deployed deployment |
| service_name       | The name of the deployed service    |


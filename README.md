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

| Name                  | Type         | Required  | Description                                                           | Default    |
|-----------------------|--------------|-----------|-----------------------------------------------------------------------|------------|
| deployment_name       | string       |    yes    | The name of the deployment                                            |            |
| replicas              | number       |           | The number of replicas for deployment                                 |            |
| container_image       | string       |           | The container image for deployment                                    |            |
| container_port        | number       |           | The container port to expose                                          |            |
| service_name          | string       |           | The name of the service                                               |            |
| api_version           | string       |    yes    | The apiVersion of the resource to be annotated                        |            |
| kind                  | string       |    yes    | The kind of the resource to be annotated                              |            |
| metadata              | map(string)  |    yes    | Standard metadata of the resource to be annoted                       |            |
| annotations           | map(string)  |    yes    | A map of annotations to apply to the resource                         |            |
| template_annotations  | map(string)  |    yes    | A mao of annotations to apply to the pod template within the resource |            |

## Outputs

| Name               | Description                         |
|--------------------|-------------------------------------|
| deployment_name    | The name of the deployed deployment |
| service_name       | The name of the deployed service    |


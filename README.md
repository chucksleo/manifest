# SAIC RBAC Terraform Module

This Terraform module creates a manifest for Kubernetes within SAIC.

## Usage

To use this Terraform module, create a new Terraform configuration file (e.g., main.tf) and specify the input variables in the module block.

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

## Requirements

| Name      | Version   |
|-----------|-----------|
| terraform | >= 0.15.5 |
| aws       | >= 3.62   |

## Resources

| Name                                                                                                                     | Type     |
|--------------------------------------------------------------------------------------------------------------------------|----------|
| [kubernetes_manifest](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/manifest)       | resource |
| [kubernetes_annotations](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/annotations) | resource |
| [kubernetes_labels](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/labels)           | resource |

## Inputs

| Name                  | Type         | Required  | Description                                       | Default    |
|-----------------------|--------------|-----------|---------------------------------------------------|------------|
| deployment_name       | string       |    yes    | The name of the deployment                        |            |
| replicas              | number       |           | The number of replicas for deployment             |            |
| container_image       | string       |           | The container image for deployment                |            |
| container_port        | number       |           | The container port to expose                      |            |
| service_name          | string       |           | The name of the service                           |            |
| namespace             | string       |    yes    | The namespace to deploy resource                  |  default   |
| labels                | map          |    yes    | Standard metadata of the resource to be annoted   |     {}     |
| annotations           | map          |    yes    | Annotations to attach to resource                 |     {}     |

## Outputs

| Name               | Description                         |
|--------------------|-------------------------------------|
| deployment_name    | The name of the deployed deployment |
| service_name       | The name of the deployed service    |


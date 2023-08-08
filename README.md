# SAIC RBAC Terraform Module
# Advanced Example Kubernetes Resources Child Module

This Terraform module creates a manifest for Kubernetes within SAIC.

## Usage

To use this Terraform module, create a new Terraform configuration file (e.g., main.tf) and specify the input variables in the module block.

```hcl
module "kubernetes_manifest" {
  source = "../.."
  
  apiVersion = "v1"
  kind       = "ConfigMap"
  metadata = {
    name      = "test-config"
    namespace = "default"
  }
  name      = "test-config"
  namespace = "default"
  data = {
    foo = "bar"
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


## Inputs

| Name       |   Type      | Required | Description                                  | Default        |
|------------|-------------|----------|----------------------------------------------|----------------|
| apiVersion | string      |   yes    | The API version of the Kubernetes resource   |                |
| kind       | string      |   no     | The kind of the Kubernetes resource.         |                |
| metadata   | map(any)    |   yes    | The metadata of the kubernetes resoure.      |                |
| name       | string      |   yes    | The name of the Kubernetes resource.         |                |
| namespace  | string      |   no     | The namespace of the Kubernetes resource     |                |
| data       | map(string) |   no     | The data of the Kubernetes resource.         |                |

## Outputs

| Name                 | Description                              |
|----------------------|------------------------------------------|
| configmap_name       | The name of the created ConfigMap.       |
| configmap_namespace  | The namespace of the created ConfigMap.  |
| configmap_data       | The data of the created ConfigMap.       |


provider "kubernetes" {
  # Configure the necessary Kubernetes provider settings here.
}

module "test_configmap" {
  source = "./kubernetes_configmap_module"

  configmap_manifest = {
    apiVersion = "v1"
    kind       = "ConfigMap"
    metadata = {
      name      = "custom-config"
      namespace = "my-namespace"
    }
    data = {
      foo = "baz"
      bar = "qux"
    }
  }
}
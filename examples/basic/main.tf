module "basic_example" {
  source = "../.."

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
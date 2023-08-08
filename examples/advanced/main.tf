provider "kubernetes" {
  # Configure the necessary Kubernetes provider settings here.
}

module "test_configmap" {
  source = "./kubernetes_configmap_module"

  manifest = var.configmap_manifest

}
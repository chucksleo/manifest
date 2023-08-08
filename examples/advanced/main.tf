module "advanced_example" {
  source = "../.."

  apiVersion = var.apiVersion
  kind = var.kind
  metadata = var.metadata
  name = var.name
  namespace = var.namespace

  data = var.data

}
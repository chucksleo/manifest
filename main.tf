provider "kubernetes" {
  config_path = "~/.kube/config"  # Path to your kubeconfig file
}

resource "kubernetes_deployment" "my_deployment" {
  metadata {
    name = var.deployment_name
    labels      = var.labels
    annotations = var.annotations
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = var.deployment_name
      }
    }

    template {
      metadata {
        labels      = var.labels
        annotations = var.annotations
      }

      spec {
        container {
          name  = var.deployment_name
          image = var.container_image
          ports {
            container_port = var.container_port
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "my_service" {
  metadata {
    name        = var.service_name
    labels      = var.labels
    annotations = var.annotations
  }

  spec {
    selector = {
      app = var.deployment_name
    }

    port {
      port        = var.container_port
      target_port = var.container_port
    }

    type = "ClusterIP"
  }
}
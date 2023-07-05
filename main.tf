data "azurerm_kubernetes_cluster" "aks-cluster" {
  name                = var.cluster_name
  resource_group_name = var.resource_group
}

locals {
  host                   = data.azurerm_kubernetes_cluster.aks-cluster.kube_config.0.host
  client_certificate     = base64decode(data.azurerm_kubernetes_cluster.aks-cluster.kube_config.0.client_certificate)
  client_key             = base64decode(data.azurerm_kubernetes_cluster.aks-cluster.kube_config.0.client_key)
  cluster_ca_certificate = base64decode(data.azurerm_kubernetes_cluster.aks-cluster.kube_config.0.cluster_ca_certificate)
}
provider "kubernetes" {
  config_path = var.config_path
}

provider "helm" {
  kubernetes {
    config_path = var.config_path
  }
}

provider "kubectl" {
  config_path = var.config_path

  load_config_file = false
}

resource "kubernetes_namespace" "main_namespace" {
  metadata {
    name = var.namespace
  }
}

resource "kubernetes_namespace" "monitoring_namespace" {
  metadata {
    name = var.monitoring_namespace
  }
}

resource "random_password" "prom_admin_password" {
  length  = 30
  special = false
}

resource "random_password" "redis_admin_password" {
  length  = 30
  special = false
}

resource "random_password" "argo_postgresql_password" {
  length  = 30
  special = false
}

resource "random_password" "argo_minio_secret_key" {
  length  = 30
  special = false
}

resource "random_password" "argo_minio_access_key" {
  length  = 30
  special = false
}
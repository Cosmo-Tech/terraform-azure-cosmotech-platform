variable "helm_repo_url" {
  type    = string
  default = "https://charts.jetstack.io"
}

variable "helm_release_name" {
  type    = string
  default = "jetstack"
}

variable "cert_manager_version" {
  type        = string
  description = "HELM Chart Version for cert-manager"
  default     = "1.11.0"
}

variable "cluster_issuer_server" {
  description = "The ACME server URL"
  type        = string
  default     = "https://acme-v02.api.letsencrypt.org/directory"
}

variable "cluster_issuer_email" {
  type = string
}

variable "cluster_issuer_name" {
  type = string
}

variable "namespace" {
  type = string
}

variable "monitoring_namespace" {
  type = string
}

variable "tls_secret_name" {
  type = string
}

variable "api_dns_name" {
  type = string
}
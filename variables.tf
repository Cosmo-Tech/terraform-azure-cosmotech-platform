variable "resource_group" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "tenant_id" {
  type        = string
  description = "The tenant id"
}

variable "subscription_id" {
  type        = string
  description = "The subscription id"
}

variable "client_id" {
  type        = string
  description = "The client id of the app registration used to build this"
}

variable "platform_sp_client_id" {
  type        = string
  description = "The client_id of the platform's service principal"
}

variable "client_secret" {
  type        = string
  description = "The client secret of the app registration used to build this"
}

variable "platform_sp_client_secret" {
  type        = string
  description = "The client_secret of the platform's service principal"
}

variable "location" {
  type    = string
  default = ""
}

variable "namespace" {
  type = string
}

variable "monitoring_namespace" {
  type = string
}

variable "loadbalancer_ip" {
  type = string
}

variable "tls_secret_name" {
  type = string
}

variable "api_dns_name" {
  type = string
}

variable "cluster_issuer_email" {
  type = string
}

variable "cluster_issuer_name" {
  type = string
}

variable "ingress_nginx_version" {
  type    = string
  default = "4.2.5"
}

variable "acr_login_password" {
  type = string
}

variable "acr_login_server" {
  type = string
}

variable "acr_login_username" {
  type = string
}

variable "cosmos_key" {
  type    = string
  default = ""
}

variable "cosmos_uri" {
  type    = string
  default = ""
}

variable "adx_uri" {
  type = string
}

variable "adx_ingestion_uri" {
  type = string
}

variable "eventbus_uri" {
  type = string
}

variable "managed_disk_id" {
  type = string
}

variable "storage_account_key" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "network_adt_clientid" {
  type = string
}

variable "network_adt_password" {
  type = string
}

variable "chart_package_version" {
  type    = string
  default = "2.4.2-dev"
}

variable "argo_minio_persistence_size" {
  type    = string
  default = "16Gi"
}

variable "argo_minio_requests_memory" {
  type    = string
  default = "2Gi"
}

variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "Primary GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Primary GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "network_name" {
  description = "VPC network name"
  type        = string
  default     = "hello-api-vpc"
}

variable "subnet_name" {
  description = "VPC subnet name"
  type        = string
  default     = "hello-api-subnet"
}

variable "pods_secondary_range_name" {
  description = "Secondary range for pods"
  type        = string
  default     = "gke-pods"
}

variable "services_secondary_range_name" {
  description = "Secondary range for services"
  type        = string
  default     = "gke-services"
}

variable "subnet_cidr" {
  description = "Primary subnet CIDR"
  type        = string
  default     = "10.10.0.0/20"
}

variable "pods_cidr" {
  description = "Pods secondary CIDR"
  type        = string
  default     = "10.20.0.0/16"
}

variable "services_cidr" {
  description = "Services secondary CIDR"
  type        = string
  default     = "10.30.0.0/20"
}

variable "cluster_name" {
  description = "GKE cluster name"
  type        = string
  default     = "hello-api-gke"
}

variable "node_pool_name" {
  description = "Node pool name"
  type        = string
  default     = "primary-pool"
}

variable "machine_type" {
  description = "GCE machine type for nodes"
  type        = string
  default     = "e2-medium"
}

variable "node_count" {
  description = "Initial node count"
  type        = number
  default     = 2
}

variable "min_node_count" {
  description = "Minimum node count"
  type        = number
  default     = 1
}

variable "max_node_count" {
  description = "Maximum node count"
  type        = number
  default     = 4
}

variable "master_authorized_networks" {
  description = "CIDR blocks allowed to reach the GKE control plane"
  type        = list(string)
  default     = []
}

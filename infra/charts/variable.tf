variable "region" {
  description = "Region e.g: ap-northeast-2"
  default     = "ap-northeast-2"
}

variable "cluster_name" {
  description = "Cluster Name e.g: seoul-mss-soc1-eks"
  default     = "seoul-mss-soc1-eks"
}

variable "cluster_role" {
  description = "Cluster Role e.g: toolchain, target"
  default     = "toolchain"
}
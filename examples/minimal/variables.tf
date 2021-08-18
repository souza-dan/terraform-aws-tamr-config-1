variable "name_prefix" {
  type        = string
  description = "A prefix to add to the names of all created resources."
  default     = "tamr-config-test"
}

variable "ingress_cidr_blocks" {
  type        = list(string)
  description = "List of CIDR blocks from which ingress to ElasticSearch domain, Tamr VM, Tamr Postgres instance are allowed (i.e. VPN CIDR)"
  default     = []
}

variable "egress_cidr_blocks" {
  type        = list(string)
  description = "List of CIDR blocks from which ingress to ElasticSearch domain, Tamr VM, Tamr Postgres instance are allowed (i.e. VPN CIDR)"
  default     = ["0.0.0.0/0"]
}

variable "ami_id" {
  type        = string
  description = "AMI to use for Tamr EC2 instance"
}

variable "license_key" {
  type        = string
  description = "Tamr license key"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID of deployment"
}

variable "tags" {
  type        = map(string)
  description = "Map of tags to add to resources."
  default     = {}
}

variable "emr_tags" {
  type        = map(string)
  description = "Map of tags to add to EMR resources. They must contain abac_valid_tags at minimum"
  default     = {}
}

variable "emr_abac_valid_tags" {
  type        = map(list(string))
  description = "Valid tags for maintaining resources when using ABAC IAM Policies with Tag Conditions. Make sure `emr_tags` contain the values specified here and that your Subnet is tagged as well"
  default     = {}
}

variable "emr_subnet_id" {
  type        = string
  description = "Subnet ID for EMR cluster"
}

variable "ec2_subnet_id" {
  type        = string
  description = "Subnet ID for Tamr VM"
}

variable "data_subnet_ids" {
  type        = list(string)
  description = "List of at least 2 subnet IDs in different AZs"
}

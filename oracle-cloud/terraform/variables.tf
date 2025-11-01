# Terraform Variables for QIIME2 2025.10 on Oracle Cloud Free Tier

variable "tenancy_ocid" {
  description = "Oracle Cloud Tenancy OCID"
  type        = string
}

variable "user_ocid" {
  description = "Oracle Cloud User OCID"
  type        = string
}

variable "fingerprint" {
  description = "API Key Fingerprint"
  type        = string
}

variable "private_key_path" {
  description = "Path to private key file"
  type        = string
}

variable "region" {
  description = "Oracle Cloud Region"
  type        = string
  default     = "us-ashburn-1"
}

variable "compartment_ocid" {
  description = "Compartment OCID"
  type        = string
}

# QIIME2 Configuration
variable "qiime2_version" {
  description = "QIIME2 Version to install"
  type        = string
  default     = "2025.10"
}

# Compute Instance Configuration
variable "instance_shape" {
  description = "Compute instance shape (Free tier: VM.Standard.E2.1.Micro or VM.Standard.A1.Flex)"
  type        = string
  default     = "VM.Standard.A1.Flex"
}

variable "instance_ocpus" {
  description = "Number of OCPUs (Free tier A1: up to 4)"
  type        = number
  default     = 2
}

variable "instance_memory_gb" {
  description = "Memory in GB (Free tier A1: up to 24GB)"
  type        = number
  default     = 12
}

variable "boot_volume_size_gb" {
  description = "Boot volume size in GB (Free tier: up to 200GB)"
  type        = number
  default     = 100
}

# Networking
variable "vcn_cidr" {
  description = "VCN CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "Subnet CIDR block"
  type        = string
  default     = "10.0.1.0/24"
}

# SSH Configuration
variable "ssh_public_key_path" {
  description = "Path to SSH public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

# Tags
variable "freeform_tags" {
  description = "Free-form tags"
  type        = map(string)
  default = {
    "Application" = "QIIME2"
    "Version"     = "2025.10"
    "Environment" = "Research"
  }
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-tf-deployment-tesasdssssssssstinsdsdg"
}

variable "location" {
  description = "The Azure region  sdsdf sdf sd fsd f where the resource group will be created"
  type        = string
  default     = "East US"
}

variable "tags" {
  description = "A map of tags to assign to the resource grou sdsf p"
  type        = map(string)
  default = {
    Environment = "Development"
    Project     = "tf-deployment-testing"
    ManagedBy   = "Terraform"
  }
}

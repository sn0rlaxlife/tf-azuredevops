# this file will house our variables of the configuration
# resource group name
# aks env

# azure location I prefer West but change periodically
variable "location" {
  type = string
  description = "Azure region where all resources will be provisioned"
  default = "Central US"
}

# Azure RG Name (Resource Groups house our resources/services) think of this as house
variable "resource_group_name" {
  type = string
  description = "variable defines the resource group"
  default = "terraform-on-aks"
}

#Azure AKS Environment Name
variable "environment" {
  type = string
  description = "This variable defines the Environment"
  default = "aks-devops"
}


#aks input variables

variable "ssh_public_key" {
  #default = "~/.ssh/aks-prod-sshkeys-terraform/aksprodsshkey.pub"
  description = "This variable defines the SSH public key for linux k8s worker nodes"
  
}

variable "windows_admin_username" {
  type = string
  default = "azureuser"
  description = "This variable defines the windows admin username k8s worker nodes"
}

#windows admin pw for the k8s worker nodes
variable "windows_admin_password" {
  type = string
  default = "sug4r1234"
  description = "This variable defines the Windows admin password k8s worker nodes"
}
  

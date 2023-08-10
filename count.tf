provider "azurerm" {
  features {

  }


}



# resource "azurerm_resource_group" "example" {
#     count=5
#   name     = "example-1-${count.index}"
#   location = "West Europe"
# }

variable "hi" {
  type = list
default = ["HI","HELLO","BYE","changed ok"]
}

resource "azurerm_resource_group" "example" {
  name     = var.hi[count.index]
  location = "eastus"
  count=3
}



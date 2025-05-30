provider "azurerm" {
  features {
   }
   subscription_id = "cb44d0cf-ebab-4a58-8c0e-894f2f81dec0"
   client_id = "a614745c-90b7-4b4c-bcb8-be812d6ff870"
   client_secret = "zY18Q~ZyzymtYjZignvRlck5xQsljsuYmgeR1aHq"
   tenant_id = "c0957c39-b825-4d17-a3af-7f8108e9e41c"
}

 terrafrom {
    backend "azurerm"{
        azurerm_resource_group = "dev-rg"
        access_key = "PAWfzH/Z15LY2bwkBGkMH6h/jtRqNQ8um6KzA+GfYXA4FcQcSSobu6LbcXQrmkpjSgKnRPVG8TtK+AStehW59Q=="
        storage_aacount_name = "demostorageac12345"
        container_name = "democount1"
        key = "terraform.tfstate"
    }
 }

resource "azurerm_resource_group" "dep1" {
  name = "rg1"
  location = "australiaeast"
}



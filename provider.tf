terraform{
    required_providers {
      
      azurerm={
        source="hashicorp/azurerm"
        version=">=3.0"
      }
    }
}
#ce versiune de provider sa foloseasca >3.0


provider "azurerm" {
    features{}
  
}
#definit provider

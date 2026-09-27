variable "length" {
  type = number
  default = 25
  description = "description"
  
}

variable "enable_monitoring" {
  type        = bool
  default     = true
  description = "habilitar o desabilitar monitoreo"
}

variable "regions" {
  type        = list(string)
  default     = ["us-east-1", "us-west-2"]
  description = "Lista de regiones donde se desplegara la infraestructura"
}

variable "environment_tags" {
  type        = map(string)
  default     = {
    dev = "Development"
    prod = "Production"
  }
  description = "etiquetas especificas para cada entorno"
}

variable "aplication_config" {
  type        = object({
    version = string
    maintainer = string
    dependencies = list(string)
  })
  default     = {
    version = ">= 0.12"
    maintainer = "John Doe"
    dependencies = ["dependency1", "dependency2"]
  }
  description = "Configuracion especifica de la aplicacion"
}

variable "allowed_networks"{
    description = "lista de redes permitidas para acceder a la aplicacion"
    type = set(string)
    default = ["10.0.0.0/16", "10.1.0.0/16"]
}



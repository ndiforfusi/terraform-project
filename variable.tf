variable "vpn-ip" {
    description = "IPV4 for VPN tunnel"
    type = string
    default =  "89.0.45.10/32"
} 

variable "allow_port_9000" {
    description = "Allow port 9000"
    type = number 
    default = 9000
  
}

variable "allow_port_443" {
    description = "Allow port 443"
    type = number
    default = 443 
  
}

variable "allow_port_21" {
    description = "Allow port 21"
    type = number
    default = 21 
  
} 

variable "allow_port_8080" {
    description = "Allow port 8080"
    type = number
    default = 8080 
  
}
variable "instances" {
    type = list
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}
 
# replace with your zone_id and domain_name
variable "zone_id" {
    default = "Z02170423JE1RGHUW68WL"
}

variable "domain_name" {
    default = "vishwa88s.online"
}

variable "fruits" {
    type = list(string)
    default = ["apple", "banana", "apple", "orange"]
}

variable "fruits_set" {
    type = set(string)
    default = ["apple", "banana", "apple", "orange"]
}

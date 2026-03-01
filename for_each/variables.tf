/* variable "instance" {
    type = map
    default = {
        mongodb = "t3.micro"
        mysql = "t3.small"
        user = "t3.micro"
        shipping = "t3.small"
    }  
} */

# This should be converted into set
variable "instances" {
    type = list
    default = ["mongodb", "redis"]
}

variable "zone_id" {
    default = "Z02170423JE1RGHUW68WL"
}

variable "domain_name" {
    default = "vishwa88s.online"
}
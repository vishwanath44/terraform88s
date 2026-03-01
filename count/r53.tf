resource "aws_route53_record" "google" {
  count = 10
  zone_id = var.zone_id
  # interpolation
  name    = "${var.instances[count.index]}.${var.domain_name}" # mongodb.vishwa88s.online
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[count.index].private_ip]
}

# roboshop.vishwa88s.online -> public_ip
# As part of functions
resource "aws_route53_record" "meta" {
  zone_id = var.zone_id
  # interpolation
  name    = "roboshop.${var.domain_name}" # roboshop.vishwa88s.online
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[index(var.instances, "frontend")].public_ip]
  
  allow_overwrite = true
}
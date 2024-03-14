#resource "aws_route53_zone" "my_domain_zone" {
#  name = "example.com" # Update with your domain name
#}

#resource "aws_route53_record" "root_domain_record" {
#  zone_id = aws_route53_zone.my_domain_zone.zone_id
#  name    = "" 
#  type    = "A"
#  ttl     = "300"
#  records = [""] 
#}

#resource "aws_route53_record" "www_subdomain_record" {
#  zone_id = aws_route53_zone.my_domain_zone.zone_id
#  name    = "www.example.com"
#  type    = "CNAME"
#  ttl     = "300"
#  records = [""]
#}


resource "aws_route53_record" "rc1" {
  zone_id = "Z06104983QQS8TCMBWCJ4" # subject to changed based on the hosted zone created
  type    = "A"
  ttl     = 300
  name    = "resume.staticss.store" # if not wanting a subdomain, just put www.staticss.store
  records = [aws_lightsail_instance.server1.public_ip_address]



}
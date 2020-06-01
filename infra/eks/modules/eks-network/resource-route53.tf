

resource "aws_route53_record" "address" {
  zone_id = "${data.aws_route53_zone.selected.zone_id}"
  name    = local.base_domain
  type    = "A"

  weighted_routing_policy {
    weight = var.weighted_routing
  }

  set_identifier = "NewSet"

  alias {
      name = "${aws_lb.main.dns_name}"
      zone_id = "${aws_lb.main.zone_id}"
      evaluate_target_health = true
  }
}

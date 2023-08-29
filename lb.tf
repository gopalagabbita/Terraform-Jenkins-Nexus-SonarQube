# resource "aws_lb" "nlb" {
#     name = "nlb"
#     internal = false
#     load_balancer_type = "network"
#     security_groups = [aws_security_group.private-sg.id]
#     vpc_id = aws_vpc.dev_vpc_01.id
#     subnets = aws_subnet.private_subnet_01.id
#     enable_deletion_protection = true
#     tags = {
#         "Name" = "nlb-01"    
#     }
# }

# expose_to_public_internet = true

# listeners = [
#     {
#       key : "default"
#       port : 443
#       protocol : "TLS"
#       ssl_policy : "ELBSecurityPolicy-TLS-1-2-Ext-2018-06"
#       certificate_arn : module.acm_certificate.certificate_arn
#       default_action : {
#         type : "forward"
#         target_group_key : "default"
#       }
#     }
#   ]
#   target_groups = [
#     {
#       key : "default"
#       port : 80
#       protocol : "TCP"
#       target_type : "instance",
#       deregistration_delay : 60,
#       health_check : {
#         port : 80
#         protocol : "HTTP"
#         interval : 30
#         healthy_threshold : 3
#         unhealthy_threshold : 3
#       }
#     }
#   ]
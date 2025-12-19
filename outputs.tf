output "vpc_id" {
  value = aws_vpc.this.id
}

output "public_subnets" {
  value = aws_subnet.public[*].id
}


# Output the public URL ###########################################

# output "web_public_ip" {
#   value = aws_instance.web.public_ip
# }

# output "web_url" {
#   value = "http://${aws_instance.web.public_ip}"
# }


# Output the ALB DNS #############################################

output "alb_dns_name" {
  value = aws_lb.web_alb.dns_name
}

output "alb_url" {
  value = "http://${aws_lb.web_alb.dns_name}"
}

# Output useful info ###################################

output "asg_name" {
  value = aws_autoscaling_group.web_asg.name
}

# S3 Output #########################################################

output "artifact_bucket" {
  value = aws_s3_bucket.artifacts.bucket
}

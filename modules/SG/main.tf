data "http" "myip" {
    url = "https://ipv4.icanhazip.com/"
}

resource "aws_security_group" "my-sg" {
    name = "bhavinRdsTf-sg"
    description = "Allow SSH access for RDS"
    ingress {
        from_port = var.SSH_from_port
        to_port = var.SSh_to_port
        protocol = var.SSH_protocol
        cidr_blocks = ["${chomp(data.http.myip.response_body)}/32"]
    }
    ingress {
        from_port = var.rds_from_port
        to_port =  var.rds_to_port
        protocol = var.rds_protocol
        cidr_blocks = ["${chomp(data.http.myip.response_body)}/32"]
    }
}

# output "sg_id" {
#     value = aws_security_group.my-sg.id
# }
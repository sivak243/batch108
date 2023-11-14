output OutputInstance_PublicIP {
     description = "Public IP Address for my AWS EC2 instance"
     value = resource.aws_instance.LinuxServerEC2[*].public_ip   
}
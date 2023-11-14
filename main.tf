
locals{
      machinename="${terraform.workspace}"
}
/*
terraform {
  backend "s3"{
       bucket = "my-training108"
       key    =  "terraform.tfstate"  
       region = "ap-south-1"

  }
  
}*/

resource "aws_instance" "LinuxServerEC2" {
     
        //ami =var.ami
       
        ami = data.aws_ami.ec2ami.id
        instance_type = var.instananceType
        key_name = var.KeyName 
        
        subnet_id = var.Subnet
        associate_public_ip_address=true

        vpc_security_group_ids = [var.SecurityGroup]
  
    tags = {
        //Name = local.machinename
        Name = "NewEC2"
      
         }
}


provider "aws" {
  region = "ap-south-1"
}
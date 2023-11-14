data "aws_ami" "ec2ami"{

     most_recent = true

     filter{
        name ="name"
        values = ["al2023-ami-2023.2.20231030.1-kernel-6.1-x86_64"]
     }

     filter{
        name ="root-device-type"
        values = ["ebs"]

     }

     filter{
        name ="virtualization-type"
        values = ["hvm"]

     }



}
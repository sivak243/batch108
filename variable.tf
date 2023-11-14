variable "instananceType"{
    description = "Assigning value for instance type"
    type = string
    //default = "t2.micro"
}


variable "KeyName"{
    description = "Assigning KeyValue for my instance"
    type = string
    default = "SivAWSTraining"
}


variable "Subnet"{
    description = "Assigning Subnet"
    type = string
    default = "subnet-068ee84819ea85332"
 
}

variable "SecurityGroup"{
    description = "Assigning SecurityGrp"
    type = string
    default = "sg-0b2903283d6f2cd4f"
}

variable "ami"{
    description = "ami value"
    type = string
    default = "ami-02e94b011299ef128"
}
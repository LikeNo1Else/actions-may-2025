provider aws {
    region = "us-east-1"
}

resource aws_instance web {
    ami           = "ami-08ca1d1e465fbfe0c"
    instance_type = "t2.micro"
}

terraform {
  backend "s3" {
    bucket = "kaizen-alexander-somename"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
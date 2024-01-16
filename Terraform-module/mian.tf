provider "aws" {
  region = "us-east-1"
}

module "modules" {
  source        = "./modules"
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"

}

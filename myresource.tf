resource "aws _instance" "web" {
    ami           = "${var.ami}"
    instance_type               = "t2.micro"
}
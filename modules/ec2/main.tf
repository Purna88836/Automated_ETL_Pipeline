variable "instance_ids" {
  type = list(string)
}

resource "aws_instance" "existing" {
  count = length(var.instance_ids)
  ami = data.aws_ami.latest.id
  instance_type = "t2.micro"
  subnet_id = element(module.vpc.public_subnet_ids, count.index)
  tags = {
    Name = "ec2-instance-${count.index}"
  }
}
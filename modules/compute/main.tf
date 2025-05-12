resource "aws_instance" "vm_linux" {
    ami          = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet_id

    tags = merge(var.tags, {
        Name = "${var.name_prefix}-vm-linux-ec2"
    })
}
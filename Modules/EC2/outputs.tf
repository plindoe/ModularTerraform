output "DMIP" {
    value = aws_instance.docker_manager.public_ip
}

output "DWIP" {
    value = aws_instance.docker_worker.public_ip
}
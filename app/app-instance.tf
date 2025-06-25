resource "aws_instance" "app" {
  ami           = "ami-014e30c8a36252ae5"
  instance_type = "t2.micro"
  count         = 2

  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install nginx -y
              echo '<!DOCTYPE html>
              <html>
              <head><title>My Web App</title></head>
              <body>
              <h1 style="color: green; text-align: center;">Welcome to My Terraform Web App!</h1>
              <p style="text-align: center;">This app was deployed using Terraform on AWS.</p>
              </body>
              </html>' > /var/www/html/index.html
              systemctl start nginx
              systemctl enable nginx
              EOF

  tags = {
    Name = "AppServer"
  }
}

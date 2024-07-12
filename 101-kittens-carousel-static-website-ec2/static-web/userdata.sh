#! /bin/bash
          dnf update -y
          dnf install httpd -y
          FOLDER="https://raw.githubusercontent.com/nargizraf/aws-project/main/101-kittens-carousel-static-website-ec2/static-web"
          cd /var/www/html
          wget ${FOLDER}/index.html
          wget ${FOLDER}/cat0.jpg
          wget ${FOLDER}/cat1.jpg
          wget ${FOLDER}/cat2.jpg
          systemctl start httpd
          systemctl enable httpd
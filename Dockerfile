FROM rockylinux:8
RUN yum update -y
RUN yum install -y httpd 
COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT service httpd start && /bin/bash

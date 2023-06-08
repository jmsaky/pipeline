FROM quay.io/gauravkumar9130/ubuntu-git
RUN apt-get update -y
RUN apt-get install -y apache2 
COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT service apache2 start && /bin/bash

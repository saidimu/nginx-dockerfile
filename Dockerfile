#
# Nginx Dockerfile
#
# https://github.com/saidimu/nginx-dockerfile
#

# Pull base image from the latest Ubuntu LTS
FROM ubuntu:precise

# Install Nginx.
RUN apt-get update
RUN apt-get install -y python-software-properties
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update
RUN apt-get install -y nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

# Attach volumes.
#VOLUME /etc/nginx/sites-enabled
#VOLUME /var/log/nginx

# Set working directory.
WORKDIR /etc/nginx

# Expose ports.
EXPOSE 80

# Define default command.
ENTRYPOINT ["nginx"]

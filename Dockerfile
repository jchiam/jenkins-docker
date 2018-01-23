FROM jenkins/jenkins:latest

USER root

RUN mkdir /var/log/jenkins && mkdir /var/cache/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/cache/jenkins

# Build essentials
RUN apt-get update && apt-get install -y make

# Docker
RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
RUN apt-get update && apt-get install -y docker-ce
RUN usermod -aG docker jenkins

# docker-compose
RUN curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose

# NPM
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash \
    && apt-get install -y nodejs

# Yarn
RUN npm install -g yarn

# Other dependencies
# RUN npm install -g firebase-tools    # Firebase

USER jenkins

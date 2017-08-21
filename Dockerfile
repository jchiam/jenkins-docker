FROM jenkins/jenkins:latest

USER root

RUN mkdir /var/log/jenkins && mkdir /var/cache/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/cache/jenkins

# Build essentials
RUN apt-get update && apt-get install -y make

# NPM
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash \
    && apt-get install -y nodejs

# Yarn
RUN npm install -g yarn

# Other dependencies
# RUN npm install -g firebase-tools    # Firebase

USER jenkins

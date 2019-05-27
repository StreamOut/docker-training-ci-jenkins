FROM jenkins/jenkins:lts-alpine
USER root
RUN addgroup -g 994 docker
RUN apk --no-cache add shadow && usermod -aG 994 jenkins
RUN curl https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz | tar xvz -C /tmp/ && \
    mv /tmp/docker/docker /usr/bin/docker
USER jenkins

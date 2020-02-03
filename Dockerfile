FROM jenkins/jenkins:2.204.2

LABEL maintainer="user@mydomain.com"
COPY plugins_extra.txt /usr/share/jenkins/ref/plugins_extra.txt

ENV JENKINS_HOME /var/jenkins_home

ARG JAVA_OPTS
ENV JAVA_OPTS "-Djenkins.install.runSetupWizard=false ${JAVA_OPTS:-}"

RUN xargs /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins_extra.txt

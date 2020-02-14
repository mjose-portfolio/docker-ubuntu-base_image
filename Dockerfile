
# Build-time metadata as defined at http://label-schema.org
#name of container: nagios
#this image is an adaptation of: quantumobject/docker-baseimage:18.04
FROM ubuntu:latest
MAINTAINER Marc Jose Rubio  "marc.jose.porfolio@gmail.com"

ADD . /build
RUN chmod 750 /build/system_services.sh
RUN /build/system_services.sh 

CMD ["/sbin/my_init"]
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.name="mjoseportfolio/nagios:base_image" \
        org.label-schema.description="A base image deploying nagios, adaptation of: quantumobject/docker-baseimage:18.04" \
        org.label-schema.url="https://mjose-portfolio.github.io/" \
        org.label-schema.vcs-url="https://github.com/mjose-portfolio" \
        org.label-schema.vendor="Marc Jose Rubio" \
        org.label-schema.schema-version="1.0" \
        org.label-schema.build-date=$BUILD_DATE \
        org.label-schema.vcs-ref=$VCS_REF

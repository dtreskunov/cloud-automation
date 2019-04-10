ARG TERRAFORM_VERSION=0.11.7

FROM hashicorp/terraform:${TERRAFORM_VERSION}
RUN apk update
RUN apk add \
    py-pip \
    docker \
    graphviz \
    nodejs \
    ttf-opensans \
    zip
RUN pip install \
    awscli \
    docker-compose

ENTRYPOINT []

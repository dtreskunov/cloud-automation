FROM hashicorp/terraform:0.12.1
RUN apk update
RUN apk add docker
RUN apk add graphviz
RUN apk add ttf-opensans
RUN apk add py-pip
RUN pip install awscli
RUN pip install docker-compose

ENTRYPOINT []
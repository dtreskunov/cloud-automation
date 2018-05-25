FROM hashicorp/terraform:0.11.7
RUN apk update
RUN apk add py-pip
RUN pip install awscli
RUN apk add docker
RUN apk add graphviz
RUN apk add ttf-opensans

ENTRYPOINT []
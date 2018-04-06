FROM golang:alpine AS gobuild
RUN apk update
RUN apk add git
RUN go get github.com/diosmosis/terraform-provider-docker-image

FROM hashicorp/terraform:latest
COPY --from=gobuild /go/bin/terraform-provider-docker-image /root/.terraform.d/plugins/terraform-provider-dockerimage
RUN apk update
RUN apk add docker
RUN apk add graphviz
RUN apk add ttf-opensans
RUN apk add py-pip
RUN pip install awscli
RUN pip install docker-compose

ENTRYPOINT []
FROM golang:alpine AS gobuild
RUN apk add --no-cache git
RUN go get github.com/diosmosis/terraform-provider-docker-image

FROM hashicorp/terraform:latest
COPY --from=gobuild /go/bin/terraform-provider-docker-image /root/.terraform.d/plugins/terraform-provider-dockerimage
RUN apk add docker py-pip
RUN pip install awscli --upgrade

ENTRYPOINT []
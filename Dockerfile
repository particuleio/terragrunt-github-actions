FROM alpine:3

RUN apk add --update --no-cache bash ca-certificates curl git jq openssh py-pip tar

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing kubectl

RUN pip3 install -U awscli

RUN adduser -D -u 1001 terragrunt

USER terragrunt

WORKDIR /home/terragrunt

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]

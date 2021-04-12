FROM alpine:3 

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh"]

RUN ["/bin/sh", "-c", "apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing kubectl"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]

FROM alpine:edge 

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh kubectl"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]

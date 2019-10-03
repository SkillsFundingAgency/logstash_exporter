# See: https://hub.docker.com/_/golang/
FROM golang:latest as golang

ADD . $GOPATH/logstash_exporter/

# Get dependencies and build!
RUN cd $GOPATH/logstash_exporter && make

# It looks like the `latest` tag uses uclibc
# See: https://hub.docker.com/_/busybox/
FROM busybox:latest 
COPY --from=golang /go/logstash_exporter/logstash_exporter /
LABEL maintainer devops@sequra.es
EXPOSE 9198
ENTRYPOINT ["/logstash_exporter"]

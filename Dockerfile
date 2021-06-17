# See: https://hub.docker.com/_/golang/
FROM golang:1.13.1 as golang

ADD . $GOPATH/das-logstash-exporter/

# Get dependencies and build!
RUN cd $GOPATH/das-logstash-exporter && make

# It looks like the `latest` tag uses uclibc
# See: https://hub.docker.com/_/busybox/
FROM busybox:latest 
COPY --from=golang /go/das-logstash-exporter/logstash_exporter /
LABEL maintainer devops@sequra.es
EXPOSE 9198
ENTRYPOINT ["/logstash_exporter"]

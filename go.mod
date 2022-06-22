module github.com/SkillsFundingAgency/das-logstash-exporter

require (
	github.com/prometheus/client_golang v1.1.0
	github.com/prometheus/common v0.6.0
	github.com/sirupsen/logrus v1.3.0 // indirect
	github.com/stretchr/testify v1.4.0
	golang.org/x/sys v0.0.0-20220615213510-4f61da869c0c // indirect
	gopkg.in/alecthomas/kingpin.v2 v2.2.6
)

replace github.com/gogo/protobuf => github.com/gogo/protobuf v1.3.2 // Vulnerability fix

go 1.13

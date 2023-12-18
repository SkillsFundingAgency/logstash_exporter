module github.com/SkillsFundingAgency/das-logstash-exporter

require (
	github.com/prometheus/client_golang v1.1.0
	github.com/prometheus/common v0.6.0
	github.com/stretchr/testify v1.4.0
	gopkg.in/alecthomas/kingpin.v2 v2.2.6
)

require (
	github.com/sirupsen/logrus v1.3.0 // indirect
	golang.org/x/crypto v0.17.0 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
)

exclude (
	github.com/gogo/protobuf v1.1.1 // Vulnerability
	gopkg.in/yaml.v2 v2.2.1 // Vulnerability
	gopkg.in/yaml.v2 v2.2.2 // Vulnerability
)

go 1.13

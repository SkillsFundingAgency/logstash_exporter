module github.com/SkillsFundingAgency/das-logstash-exporter

require (
	github.com/prometheus/client_golang v1.11.1
	github.com/prometheus/common v0.26.0
	github.com/stretchr/testify v1.4.0
	gopkg.in/alecthomas/kingpin.v2 v2.2.6
)

require (
	golang.org/x/sys v0.0.0-20220615213510-4f61da869c0c // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
)

exclude (
	github.com/gogo/protobuf v1.1.1 // Vulnerability
	gopkg.in/yaml.v2 v2.2.1 // Vulnerability
	gopkg.in/yaml.v2 v2.2.2 // Vulnerability
)

go 1.13

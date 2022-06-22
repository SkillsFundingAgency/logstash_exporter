module github.com/SkillsFundingAgency/das-logstash-exporter

require (
	github.com/prometheus/client_golang v1.1.0
	github.com/prometheus/common v0.6.0
	github.com/stretchr/testify v1.4.0
	gopkg.in/alecthomas/kingpin.v2 v2.2.6
)

require (
	github.com/alecthomas/template v0.0.0-20160405071501-a0175ee3bccc // indirect
	github.com/alecthomas/units v0.0.0-20151022065526-2efee857e7cf // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/golang/protobuf v1.3.2 // indirect
	github.com/konsorten/go-windows-terminal-sequences v1.0.1 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/prometheus/client_model v0.0.0-20190129233127-fd36f4220a90 // indirect
	github.com/prometheus/procfs v0.0.3 // indirect
	github.com/sirupsen/logrus v1.3.0 // indirect
	golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2 // indirect
	golang.org/x/sys v0.0.0-20220615213510-4f61da869c0c // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
)

exclude (
	github.com/gogo/protobuf v1.1.1 // Vulnerability
	gopkg.in/yaml.v2 v2.2.1 // Vulnerability
	gopkg.in/yaml.v2 v2.2.2 // Vulnerability
)

go 1.13

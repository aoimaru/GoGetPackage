[app/sources/174527002.Dockerfile]
digraph {
  "sha256:d54fa791b3620609d46e25a38eeed5466fd25141e10fae77d0723c98f82dc051" [label="local://context" shape="ellipse"];
  "sha256:b0975f6370cec7551f54d2be010adeae977d29e35943234780c38ca2c9e27f20" [label="docker-image://docker.io/library/golang:1.7.6" shape="ellipse"];
  "sha256:6500ebd65271768f2b995a50d50ed402b8187f9f212e1259dfebff3818bcc674" [label="/bin/sh -c set -x &&     apt-get update &&     apt-get install -y netcat &&     apt-get clean" shape="box"];
  "sha256:153138fe81ecb530eedd4118bc463d1b4ee0067ee13ee536547876d584178148" [label="copy{src=/libbeat/scripts/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:d4d245fbfea998538fd4485235c4c06cd89882b118008911c47ebdc0bd7de1e6" [label="/bin/sh -c mkdir -p /etc/pki/tls/certs" shape="box"];
  "sha256:8cb50f0d6001afaf10a8ab981c5a6c277790df6c000a4cfb11d9fef4e503ec7a" [label="copy{src=/testing/environments/docker/logstash/pki/tls/certs/logstash.crt, dest=/etc/pki/tls/certs/logstash.crt}" shape="note"];
  "sha256:c7b6cbf1838fbdc1d8f5511c7e42e4ce82f8248882189aa7aa4667c01532d1d5" [label="copy{src=/, dest=/go/src/github.com/elastic/beats/}" shape="note"];
  "sha256:44567e915b32cbb349c374608d62c0236515e3da49e15a84aed0561104f3fafe" [label="sha256:44567e915b32cbb349c374608d62c0236515e3da49e15a84aed0561104f3fafe" shape="plaintext"];
  "sha256:b0975f6370cec7551f54d2be010adeae977d29e35943234780c38ca2c9e27f20" -> "sha256:6500ebd65271768f2b995a50d50ed402b8187f9f212e1259dfebff3818bcc674" [label=""];
  "sha256:6500ebd65271768f2b995a50d50ed402b8187f9f212e1259dfebff3818bcc674" -> "sha256:153138fe81ecb530eedd4118bc463d1b4ee0067ee13ee536547876d584178148" [label=""];
  "sha256:d54fa791b3620609d46e25a38eeed5466fd25141e10fae77d0723c98f82dc051" -> "sha256:153138fe81ecb530eedd4118bc463d1b4ee0067ee13ee536547876d584178148" [label=""];
  "sha256:153138fe81ecb530eedd4118bc463d1b4ee0067ee13ee536547876d584178148" -> "sha256:d4d245fbfea998538fd4485235c4c06cd89882b118008911c47ebdc0bd7de1e6" [label=""];
  "sha256:d4d245fbfea998538fd4485235c4c06cd89882b118008911c47ebdc0bd7de1e6" -> "sha256:8cb50f0d6001afaf10a8ab981c5a6c277790df6c000a4cfb11d9fef4e503ec7a" [label=""];
  "sha256:d54fa791b3620609d46e25a38eeed5466fd25141e10fae77d0723c98f82dc051" -> "sha256:8cb50f0d6001afaf10a8ab981c5a6c277790df6c000a4cfb11d9fef4e503ec7a" [label=""];
  "sha256:8cb50f0d6001afaf10a8ab981c5a6c277790df6c000a4cfb11d9fef4e503ec7a" -> "sha256:c7b6cbf1838fbdc1d8f5511c7e42e4ce82f8248882189aa7aa4667c01532d1d5" [label=""];
  "sha256:d54fa791b3620609d46e25a38eeed5466fd25141e10fae77d0723c98f82dc051" -> "sha256:c7b6cbf1838fbdc1d8f5511c7e42e4ce82f8248882189aa7aa4667c01532d1d5" [label=""];
  "sha256:c7b6cbf1838fbdc1d8f5511c7e42e4ce82f8248882189aa7aa4667c01532d1d5" -> "sha256:44567e915b32cbb349c374608d62c0236515e3da49e15a84aed0561104f3fafe" [label=""];
}


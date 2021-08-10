[app/sources/345362318.Dockerfile]
digraph {
  "sha256:bd63b1dac7d3634029045b4d5cfa91ab88374969c548c941270181f0c980f570" [label="docker-image://docker.io/balenalib/armv7hf-alpine:3.7-build" shape="ellipse"];
  "sha256:469286201c7b969ef7f504748f876f15e3ae87f8950624d09fff253b7c508fb8" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:340b01cd0c55cdaa06c8397aa148c80b78ce6e41dbf0ec0eebfbb788ecbef30b" [label="sha256:340b01cd0c55cdaa06c8397aa148c80b78ce6e41dbf0ec0eebfbb788ecbef30b" shape="plaintext"];
  "sha256:bd63b1dac7d3634029045b4d5cfa91ab88374969c548c941270181f0c980f570" -> "sha256:469286201c7b969ef7f504748f876f15e3ae87f8950624d09fff253b7c508fb8" [label=""];
  "sha256:469286201c7b969ef7f504748f876f15e3ae87f8950624d09fff253b7c508fb8" -> "sha256:340b01cd0c55cdaa06c8397aa148c80b78ce6e41dbf0ec0eebfbb788ecbef30b" [label=""];
}


[app/sources/345367895.Dockerfile]
digraph {
  "sha256:09354cea1f068134a6606a6cc0291926a627b00cac6aaedbd31e2b56c7f4ce9f" [label="docker-image://docker.io/balenalib/artik530-alpine:3.8-run" shape="ellipse"];
  "sha256:5c3147e5e52539cc7daa7453a17fecf3e86a0ca0e48c9861ec8bc554101a40e4" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:821871d4b231f60d21b001da6eca3e0a728bf0a36000dbaa8d7fe5b56d230be7" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:b83c459ffc6f5467d0f18b5a17f964d4289d221854c9607120422edbd9eedae4" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:64a0086f990b3f48506754bb0d7f24f61a8dea38b0faa0a95e988d21fecb82a7" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:0c9cfc00a677b1c95d0d37756ac6e6c548cf87f8bc0a07d63c231b0d9471b6b0" [label="mkdir{path=/go}" shape="note"];
  "sha256:cd9dd312d8ccd359b88f8dd9a0a1285294f985e6e8bbe9c2fa66d645c33139e4" [label="sha256:cd9dd312d8ccd359b88f8dd9a0a1285294f985e6e8bbe9c2fa66d645c33139e4" shape="plaintext"];
  "sha256:09354cea1f068134a6606a6cc0291926a627b00cac6aaedbd31e2b56c7f4ce9f" -> "sha256:5c3147e5e52539cc7daa7453a17fecf3e86a0ca0e48c9861ec8bc554101a40e4" [label=""];
  "sha256:5c3147e5e52539cc7daa7453a17fecf3e86a0ca0e48c9861ec8bc554101a40e4" -> "sha256:821871d4b231f60d21b001da6eca3e0a728bf0a36000dbaa8d7fe5b56d230be7" [label=""];
  "sha256:821871d4b231f60d21b001da6eca3e0a728bf0a36000dbaa8d7fe5b56d230be7" -> "sha256:b83c459ffc6f5467d0f18b5a17f964d4289d221854c9607120422edbd9eedae4" [label=""];
  "sha256:b83c459ffc6f5467d0f18b5a17f964d4289d221854c9607120422edbd9eedae4" -> "sha256:64a0086f990b3f48506754bb0d7f24f61a8dea38b0faa0a95e988d21fecb82a7" [label=""];
  "sha256:64a0086f990b3f48506754bb0d7f24f61a8dea38b0faa0a95e988d21fecb82a7" -> "sha256:0c9cfc00a677b1c95d0d37756ac6e6c548cf87f8bc0a07d63c231b0d9471b6b0" [label=""];
  "sha256:0c9cfc00a677b1c95d0d37756ac6e6c548cf87f8bc0a07d63c231b0d9471b6b0" -> "sha256:cd9dd312d8ccd359b88f8dd9a0a1285294f985e6e8bbe9c2fa66d645c33139e4" [label=""];
}


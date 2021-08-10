[app/sources/345360648.Dockerfile]
digraph {
  "sha256:5d033430c7cb91c145c1a14513f1673140201e2027c3d3e199a4c114e8a07bc2" [label="docker-image://docker.io/balenalib/surface-pro-6-alpine:3.8-build" shape="ellipse"];
  "sha256:5a9da832f0a3fcbf2c5f6ea078bf17d1be65a3cbdbc4ce99ffb57c23b00feb96" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:9bda38f81fa0d6cac38ecf434a01864e2dae6b57df71c1e6c6a9c2bcb043b507" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-amd64.tar.gz\" \t&& echo \"8d18ef91cc3413fecd238647a71d9c19f710b9ad843bb49ead0b4960df653f5e  go$GO_VERSION.linux-alpine-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-amd64.tar.gz" shape="box"];
  "sha256:f46f35b1603559bcc101d9ec75cfe8b9b1c906a504a4f11c4b6254dc56a6bcb1" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:c55f082712150265d7af2e32c80251c53b8735589b2fe13f5f073c3924cd164f" [label="mkdir{path=/go}" shape="note"];
  "sha256:5aba4e3dbfdb9515b0b159291c9df26f561a65043301fae9a6a5136132d33ddd" [label="sha256:5aba4e3dbfdb9515b0b159291c9df26f561a65043301fae9a6a5136132d33ddd" shape="plaintext"];
  "sha256:5d033430c7cb91c145c1a14513f1673140201e2027c3d3e199a4c114e8a07bc2" -> "sha256:5a9da832f0a3fcbf2c5f6ea078bf17d1be65a3cbdbc4ce99ffb57c23b00feb96" [label=""];
  "sha256:5a9da832f0a3fcbf2c5f6ea078bf17d1be65a3cbdbc4ce99ffb57c23b00feb96" -> "sha256:9bda38f81fa0d6cac38ecf434a01864e2dae6b57df71c1e6c6a9c2bcb043b507" [label=""];
  "sha256:9bda38f81fa0d6cac38ecf434a01864e2dae6b57df71c1e6c6a9c2bcb043b507" -> "sha256:f46f35b1603559bcc101d9ec75cfe8b9b1c906a504a4f11c4b6254dc56a6bcb1" [label=""];
  "sha256:f46f35b1603559bcc101d9ec75cfe8b9b1c906a504a4f11c4b6254dc56a6bcb1" -> "sha256:c55f082712150265d7af2e32c80251c53b8735589b2fe13f5f073c3924cd164f" [label=""];
  "sha256:c55f082712150265d7af2e32c80251c53b8735589b2fe13f5f073c3924cd164f" -> "sha256:5aba4e3dbfdb9515b0b159291c9df26f561a65043301fae9a6a5136132d33ddd" [label=""];
}


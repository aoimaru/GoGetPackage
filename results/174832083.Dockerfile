[app/sources/174832083.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:bfa8aa404f8d10da0958dfba4546e7140daf5b8321c3a56f8ecb16178fb4508e" [label="/bin/sh -c apk -U --no-cache add                    build-base                    git                    go                    g++ &&     export GOPATH=/opt/go/ &&     mkdir -p /opt/go/src &&     cd /opt/go/src &&     git clone https://github.com/schmalle/medpot &&     go get -d -v github.com/davecgh/go-spew/spew &&     go get -d -v github.com/go-ini/ini &&     go get -d -v github.com/mozillazg/request &&     go get -d -v go.uber.org/zap &&     cd medpot &&     cp dist/etc/ews.cfg /etc/ &&     go build medpot &&     mkdir -p /opt/medpot              /var/log/medpot &&     cp medpot /opt/medpot &&     cp /opt/go/src/medpot/template/*.xml /opt/medpot/ &&     addgroup -g 2000 medpot &&     adduser -S -s /bin/ash -u 2000 -D -g 2000 medpot &&     chown -R medpot:medpot /var/log/medpot &&     apk del --purge build-base                     git                     go                     g++ &&     rm -rf /var/cache/apk/*            /opt/go            /root/dist" shape="box"];
  "sha256:af189eb010c9064e07a60953fd1cadb04de17a71aa4098b163515f7d217d4eef" [label="mkdir{path=/opt/medpot}" shape="note"];
  "sha256:2da8af3dffcd637b868a516f2d952d6d7a4dc488e2a81358f01c816cb7be736b" [label="sha256:2da8af3dffcd637b868a516f2d952d6d7a4dc488e2a81358f01c816cb7be736b" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:bfa8aa404f8d10da0958dfba4546e7140daf5b8321c3a56f8ecb16178fb4508e" [label=""];
  "sha256:bfa8aa404f8d10da0958dfba4546e7140daf5b8321c3a56f8ecb16178fb4508e" -> "sha256:af189eb010c9064e07a60953fd1cadb04de17a71aa4098b163515f7d217d4eef" [label=""];
  "sha256:af189eb010c9064e07a60953fd1cadb04de17a71aa4098b163515f7d217d4eef" -> "sha256:2da8af3dffcd637b868a516f2d952d6d7a4dc488e2a81358f01c816cb7be736b" [label=""];
}


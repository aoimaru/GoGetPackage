[app/sources/345357153.Dockerfile]
digraph {
  "sha256:29ab3bf95f91f3e3a2667fb9d69f887460c12b9e607325ba44425c73a0729289" [label="docker-image://docker.io/balenalib/orangepi-plus2-alpine:edge-run" shape="ellipse"];
  "sha256:5480ceb0101fba70d902d667d3d4bfc58cc1fd543fe31f3b8d8892f40a38cdb2" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:43c9eb760f85478b9fc945d9614a129662dbbee7c4a1802c698a54f44974f5d1" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:6885c1629f9fb6572a2cf43ac1f268581a2efe7a426d4806b91a2f9857f7a6c3" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:78c97535ea1be34fbd8d1e726ae2e557e029ed8d836351bf9f27e26426176bd5" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:b484b237258e0befc3d700a0dfbcc4251f095003f7deada3aed76b88359c58e7" [label="mkdir{path=/go}" shape="note"];
  "sha256:1829030c969dded33f4213991c351fc835e79ca27e2e9a114f3cbc3bc791d3f7" [label="sha256:1829030c969dded33f4213991c351fc835e79ca27e2e9a114f3cbc3bc791d3f7" shape="plaintext"];
  "sha256:29ab3bf95f91f3e3a2667fb9d69f887460c12b9e607325ba44425c73a0729289" -> "sha256:5480ceb0101fba70d902d667d3d4bfc58cc1fd543fe31f3b8d8892f40a38cdb2" [label=""];
  "sha256:5480ceb0101fba70d902d667d3d4bfc58cc1fd543fe31f3b8d8892f40a38cdb2" -> "sha256:43c9eb760f85478b9fc945d9614a129662dbbee7c4a1802c698a54f44974f5d1" [label=""];
  "sha256:43c9eb760f85478b9fc945d9614a129662dbbee7c4a1802c698a54f44974f5d1" -> "sha256:6885c1629f9fb6572a2cf43ac1f268581a2efe7a426d4806b91a2f9857f7a6c3" [label=""];
  "sha256:6885c1629f9fb6572a2cf43ac1f268581a2efe7a426d4806b91a2f9857f7a6c3" -> "sha256:78c97535ea1be34fbd8d1e726ae2e557e029ed8d836351bf9f27e26426176bd5" [label=""];
  "sha256:78c97535ea1be34fbd8d1e726ae2e557e029ed8d836351bf9f27e26426176bd5" -> "sha256:b484b237258e0befc3d700a0dfbcc4251f095003f7deada3aed76b88359c58e7" [label=""];
  "sha256:b484b237258e0befc3d700a0dfbcc4251f095003f7deada3aed76b88359c58e7" -> "sha256:1829030c969dded33f4213991c351fc835e79ca27e2e9a114f3cbc3bc791d3f7" [label=""];
}


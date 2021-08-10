[app/sources/345372931.Dockerfile]
digraph {
  "sha256:7847379d094b2ac19060360593c2f9fc8023eb723bfa1dfa3c307e8b8fbbcb7b" [label="docker-image://docker.io/balenalib/intel-nuc-alpine:3.5-build@sha256:63fe7f6f51cf4c891e71b6b06f0c11eb29dde80e771ff053e41571b72150b134" shape="ellipse"];
  "sha256:f7886267f547b0265f68edcea07c8c5fb85a3df91bd66d3cafdecb7c0cc3d07b" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:9258b4d3891cbeee2be1621a226bc3a9ca4cd530e7e1caadc08637446ac7cad6" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-amd64.tar.gz\" \t&& echo \"8d18ef91cc3413fecd238647a71d9c19f710b9ad843bb49ead0b4960df653f5e  go$GO_VERSION.linux-alpine-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-amd64.tar.gz" shape="box"];
  "sha256:2f54528b2d99ed11e97cc36daeaac7c2583d2061b9b5ccacdbba0a1685eb7c8d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:57eae43854bc5f85f3811336306721f42cfb6fc131b5352c9973651031f57913" [label="mkdir{path=/go}" shape="note"];
  "sha256:7a57dde9b183810849bb17a46da0870f5e69aa0a6ec7ad8d6a34a67df509d197" [label="sha256:7a57dde9b183810849bb17a46da0870f5e69aa0a6ec7ad8d6a34a67df509d197" shape="plaintext"];
  "sha256:7847379d094b2ac19060360593c2f9fc8023eb723bfa1dfa3c307e8b8fbbcb7b" -> "sha256:f7886267f547b0265f68edcea07c8c5fb85a3df91bd66d3cafdecb7c0cc3d07b" [label=""];
  "sha256:f7886267f547b0265f68edcea07c8c5fb85a3df91bd66d3cafdecb7c0cc3d07b" -> "sha256:9258b4d3891cbeee2be1621a226bc3a9ca4cd530e7e1caadc08637446ac7cad6" [label=""];
  "sha256:9258b4d3891cbeee2be1621a226bc3a9ca4cd530e7e1caadc08637446ac7cad6" -> "sha256:2f54528b2d99ed11e97cc36daeaac7c2583d2061b9b5ccacdbba0a1685eb7c8d" [label=""];
  "sha256:2f54528b2d99ed11e97cc36daeaac7c2583d2061b9b5ccacdbba0a1685eb7c8d" -> "sha256:57eae43854bc5f85f3811336306721f42cfb6fc131b5352c9973651031f57913" [label=""];
  "sha256:57eae43854bc5f85f3811336306721f42cfb6fc131b5352c9973651031f57913" -> "sha256:7a57dde9b183810849bb17a46da0870f5e69aa0a6ec7ad8d6a34a67df509d197" [label=""];
}


[app/sources/345368428.Dockerfile]
digraph {
  "sha256:62e1c2bcfe748e0739d6fca2056e112ad9cdb1b72c184beb75d00b528bd9f8f1" [label="docker-image://docker.io/balenalib/bananapi-m1-plus-alpine:3.6-build" shape="ellipse"];
  "sha256:aafda9d10d22b3a77ebecc4a7409c5a20d3a990e37087a93d65ada97b98d1fa5" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:b86f319471c0699ded2b237d5a5c9f3bfe333735f6c2ac008862f87142870996" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:71b6409ec59d4e08294d76487279e7902294dfba646136d0a93c728ecdf17b26" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3bdb1c30cc880976323665ba8f446527009f142b8886588a291a9a3a4eb91a1d" [label="mkdir{path=/go}" shape="note"];
  "sha256:3380ba83e97de36b1f104d7be290e698cc6863086dfb00b2d4406853e7231e6a" [label="sha256:3380ba83e97de36b1f104d7be290e698cc6863086dfb00b2d4406853e7231e6a" shape="plaintext"];
  "sha256:62e1c2bcfe748e0739d6fca2056e112ad9cdb1b72c184beb75d00b528bd9f8f1" -> "sha256:aafda9d10d22b3a77ebecc4a7409c5a20d3a990e37087a93d65ada97b98d1fa5" [label=""];
  "sha256:aafda9d10d22b3a77ebecc4a7409c5a20d3a990e37087a93d65ada97b98d1fa5" -> "sha256:b86f319471c0699ded2b237d5a5c9f3bfe333735f6c2ac008862f87142870996" [label=""];
  "sha256:b86f319471c0699ded2b237d5a5c9f3bfe333735f6c2ac008862f87142870996" -> "sha256:71b6409ec59d4e08294d76487279e7902294dfba646136d0a93c728ecdf17b26" [label=""];
  "sha256:71b6409ec59d4e08294d76487279e7902294dfba646136d0a93c728ecdf17b26" -> "sha256:3bdb1c30cc880976323665ba8f446527009f142b8886588a291a9a3a4eb91a1d" [label=""];
  "sha256:3bdb1c30cc880976323665ba8f446527009f142b8886588a291a9a3a4eb91a1d" -> "sha256:3380ba83e97de36b1f104d7be290e698cc6863086dfb00b2d4406853e7231e6a" [label=""];
}


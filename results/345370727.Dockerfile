[app/sources/345370727.Dockerfile]
digraph {
  "sha256:87a4fbd19417db80ead55533d2f400e8341a9f3d0bbe3a41d36b816a033e09d3" [label="docker-image://docker.io/balenalib/beaglebone-black-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:4de34bb721855dd484d93b55e3019eb7a31572eee117a11001add9f4e12bacb4" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a71be2a18b825dbf5bc6ac4dcbf874a975e0e36ab06536845b20f666aed0b9c2" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:8f83d3adaf0ba023dfa24b843edfe92f0981a0141b301a8e7d154ad1a2507ad1" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:71a4c658323b915bf50a3770f8d0dd3dbee835ed52f9deeb15c25d563e87e210" [label="mkdir{path=/go}" shape="note"];
  "sha256:3330746abbb6b3e0f7c9d51588f389ba125beeebdcaff1391971266754c4e51a" [label="sha256:3330746abbb6b3e0f7c9d51588f389ba125beeebdcaff1391971266754c4e51a" shape="plaintext"];
  "sha256:87a4fbd19417db80ead55533d2f400e8341a9f3d0bbe3a41d36b816a033e09d3" -> "sha256:4de34bb721855dd484d93b55e3019eb7a31572eee117a11001add9f4e12bacb4" [label=""];
  "sha256:4de34bb721855dd484d93b55e3019eb7a31572eee117a11001add9f4e12bacb4" -> "sha256:a71be2a18b825dbf5bc6ac4dcbf874a975e0e36ab06536845b20f666aed0b9c2" [label=""];
  "sha256:a71be2a18b825dbf5bc6ac4dcbf874a975e0e36ab06536845b20f666aed0b9c2" -> "sha256:8f83d3adaf0ba023dfa24b843edfe92f0981a0141b301a8e7d154ad1a2507ad1" [label=""];
  "sha256:8f83d3adaf0ba023dfa24b843edfe92f0981a0141b301a8e7d154ad1a2507ad1" -> "sha256:71a4c658323b915bf50a3770f8d0dd3dbee835ed52f9deeb15c25d563e87e210" [label=""];
  "sha256:71a4c658323b915bf50a3770f8d0dd3dbee835ed52f9deeb15c25d563e87e210" -> "sha256:3330746abbb6b3e0f7c9d51588f389ba125beeebdcaff1391971266754c4e51a" [label=""];
}


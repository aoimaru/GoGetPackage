[app/sources/345368575.Dockerfile]
digraph {
  "sha256:0d25e467d944fc27cc49b581aae7a222197396c9fa88a458da35a66b083675d8" [label="docker-image://docker.io/balenalib/beagleboard-xm-debian:jessie-run" shape="ellipse"];
  "sha256:bb974797612e9a5dd9ce6328cb5e9eaef996f4097482872229b6867ac61d1639" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:27b130d72ccbec7722c11956352af1c2575f7054d77a13aaa1b668d9ed867e76" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:92992351ec346e7bcc1a0e595b8105a59c521733c1b28f77b617b44bf3eea08d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3c22eec6e0a52530e265d49949c5fbf05c2f829f41c0dd3de10a86f048c392f3" [label="mkdir{path=/go}" shape="note"];
  "sha256:29c8ce99daf9423a66ca76bbae4286d6f9c6620c813d8f995f2c9de8a3ce2d7f" [label="sha256:29c8ce99daf9423a66ca76bbae4286d6f9c6620c813d8f995f2c9de8a3ce2d7f" shape="plaintext"];
  "sha256:0d25e467d944fc27cc49b581aae7a222197396c9fa88a458da35a66b083675d8" -> "sha256:bb974797612e9a5dd9ce6328cb5e9eaef996f4097482872229b6867ac61d1639" [label=""];
  "sha256:bb974797612e9a5dd9ce6328cb5e9eaef996f4097482872229b6867ac61d1639" -> "sha256:27b130d72ccbec7722c11956352af1c2575f7054d77a13aaa1b668d9ed867e76" [label=""];
  "sha256:27b130d72ccbec7722c11956352af1c2575f7054d77a13aaa1b668d9ed867e76" -> "sha256:92992351ec346e7bcc1a0e595b8105a59c521733c1b28f77b617b44bf3eea08d" [label=""];
  "sha256:92992351ec346e7bcc1a0e595b8105a59c521733c1b28f77b617b44bf3eea08d" -> "sha256:3c22eec6e0a52530e265d49949c5fbf05c2f829f41c0dd3de10a86f048c392f3" [label=""];
  "sha256:3c22eec6e0a52530e265d49949c5fbf05c2f829f41c0dd3de10a86f048c392f3" -> "sha256:29c8ce99daf9423a66ca76bbae4286d6f9c6620c813d8f995f2c9de8a3ce2d7f" [label=""];
}


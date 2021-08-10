[app/sources/345371385.Dockerfile]
digraph {
  "sha256:1ffe4e08656026148b0e4dfac6f67e76298ff6e1d64649e969a48ae4b60e6e5d" [label="docker-image://docker.io/balenalib/ccon-01-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:e298ed2d0261e1b6a59f662822a18207cd6048ab0d72cb9694c1997db5a1e3fe" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5a0dc69e2f335fd1f13ca7e2a7eb41ab71f0f48cf693089285903a076507ac65" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:7e8758ff1fae3360e571affabb5ed8993156d4ef68a155aa5d5901dec0b7aaf2" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:72a326643ee352a3799913dc4b137e84c614b2eec4c153a6f574df6fd3e001e1" [label="mkdir{path=/go}" shape="note"];
  "sha256:f7a947912780cdf3d401cac90509350283fea4522929dc308f9d6c644cbd0570" [label="sha256:f7a947912780cdf3d401cac90509350283fea4522929dc308f9d6c644cbd0570" shape="plaintext"];
  "sha256:1ffe4e08656026148b0e4dfac6f67e76298ff6e1d64649e969a48ae4b60e6e5d" -> "sha256:e298ed2d0261e1b6a59f662822a18207cd6048ab0d72cb9694c1997db5a1e3fe" [label=""];
  "sha256:e298ed2d0261e1b6a59f662822a18207cd6048ab0d72cb9694c1997db5a1e3fe" -> "sha256:5a0dc69e2f335fd1f13ca7e2a7eb41ab71f0f48cf693089285903a076507ac65" [label=""];
  "sha256:5a0dc69e2f335fd1f13ca7e2a7eb41ab71f0f48cf693089285903a076507ac65" -> "sha256:7e8758ff1fae3360e571affabb5ed8993156d4ef68a155aa5d5901dec0b7aaf2" [label=""];
  "sha256:7e8758ff1fae3360e571affabb5ed8993156d4ef68a155aa5d5901dec0b7aaf2" -> "sha256:72a326643ee352a3799913dc4b137e84c614b2eec4c153a6f574df6fd3e001e1" [label=""];
  "sha256:72a326643ee352a3799913dc4b137e84c614b2eec4c153a6f574df6fd3e001e1" -> "sha256:f7a947912780cdf3d401cac90509350283fea4522929dc308f9d6c644cbd0570" [label=""];
}


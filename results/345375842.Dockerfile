[app/sources/345375842.Dockerfile]
digraph {
  "sha256:70c72fe25d7281a586699dabb271d67979064c1b70990d1f92897be4c4a388f0" [label="docker-image://docker.io/balenalib/orange-pi-zero-ubuntu:bionic-run" shape="ellipse"];
  "sha256:0a14503cc6f6acf74203b7d76e94e2a229554548f45aa9318ffefa4a29ce3a80" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0241afbb0e98915654e65fbec68a8131f14222828721a615500f3b561673e0ba" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:381ca5f223a8215deb572ebb6231c82de4d3185cc15e22ac679d77ccef0630fb" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:73308ae9597437cd4b369ef19037fbae993eb6434186dfbe133b02485a3c3b8a" [label="mkdir{path=/go}" shape="note"];
  "sha256:29b2d805d666482a4a50147d8166bc04444c9db415dce973187882d2e60a2e9f" [label="sha256:29b2d805d666482a4a50147d8166bc04444c9db415dce973187882d2e60a2e9f" shape="plaintext"];
  "sha256:70c72fe25d7281a586699dabb271d67979064c1b70990d1f92897be4c4a388f0" -> "sha256:0a14503cc6f6acf74203b7d76e94e2a229554548f45aa9318ffefa4a29ce3a80" [label=""];
  "sha256:0a14503cc6f6acf74203b7d76e94e2a229554548f45aa9318ffefa4a29ce3a80" -> "sha256:0241afbb0e98915654e65fbec68a8131f14222828721a615500f3b561673e0ba" [label=""];
  "sha256:0241afbb0e98915654e65fbec68a8131f14222828721a615500f3b561673e0ba" -> "sha256:381ca5f223a8215deb572ebb6231c82de4d3185cc15e22ac679d77ccef0630fb" [label=""];
  "sha256:381ca5f223a8215deb572ebb6231c82de4d3185cc15e22ac679d77ccef0630fb" -> "sha256:73308ae9597437cd4b369ef19037fbae993eb6434186dfbe133b02485a3c3b8a" [label=""];
  "sha256:73308ae9597437cd4b369ef19037fbae993eb6434186dfbe133b02485a3c3b8a" -> "sha256:29b2d805d666482a4a50147d8166bc04444c9db415dce973187882d2e60a2e9f" [label=""];
}


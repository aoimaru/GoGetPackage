[app/sources/345373648.Dockerfile]
digraph {
  "sha256:e61f6feefa6c19a85804cbf1be3a42b06c55053f2fa4eee6092baac8fdc17a05" [label="docker-image://docker.io/balenalib/kitra710-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:357e5ea4aaf5b14b134c82d6e5b56e75772bef936f5fd0fb45a3ac562730fb65" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c4840989a8531a4cd39cc3a02f657ce4793a0d3b543ecc11a94c52f105bbdea8" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:fa40340d1f2ab3181e450fb3a1ce22f16ddfb1665f795380344f294f35270ffd" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2d11c507d2886a12299ef8daa11653e06eadbdfb3125c9e4091b43c1cda96261" [label="mkdir{path=/go}" shape="note"];
  "sha256:7a2494a8f685f21ce718c0be3e573610d05ab413ed278a5c6e8b604e97355c97" [label="sha256:7a2494a8f685f21ce718c0be3e573610d05ab413ed278a5c6e8b604e97355c97" shape="plaintext"];
  "sha256:e61f6feefa6c19a85804cbf1be3a42b06c55053f2fa4eee6092baac8fdc17a05" -> "sha256:357e5ea4aaf5b14b134c82d6e5b56e75772bef936f5fd0fb45a3ac562730fb65" [label=""];
  "sha256:357e5ea4aaf5b14b134c82d6e5b56e75772bef936f5fd0fb45a3ac562730fb65" -> "sha256:c4840989a8531a4cd39cc3a02f657ce4793a0d3b543ecc11a94c52f105bbdea8" [label=""];
  "sha256:c4840989a8531a4cd39cc3a02f657ce4793a0d3b543ecc11a94c52f105bbdea8" -> "sha256:fa40340d1f2ab3181e450fb3a1ce22f16ddfb1665f795380344f294f35270ffd" [label=""];
  "sha256:fa40340d1f2ab3181e450fb3a1ce22f16ddfb1665f795380344f294f35270ffd" -> "sha256:2d11c507d2886a12299ef8daa11653e06eadbdfb3125c9e4091b43c1cda96261" [label=""];
  "sha256:2d11c507d2886a12299ef8daa11653e06eadbdfb3125c9e4091b43c1cda96261" -> "sha256:7a2494a8f685f21ce718c0be3e573610d05ab413ed278a5c6e8b604e97355c97" [label=""];
}


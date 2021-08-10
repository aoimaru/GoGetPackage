[app/sources/345360601.Dockerfile]
digraph {
  "sha256:5746f61525f9d0b87573f684bb0935e5680029a3f5aee282c32bd3177c6a150b" [label="docker-image://docker.io/balenalib/stem-x86-32-ubuntu:xenial-run" shape="ellipse"];
  "sha256:1df7084a6f8c3c6980534eba3085aea5b40e45ef69d4f48ea4201c672a4e8cfe" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d1f09c4499d8ea1ba1afd16f11011931b0ba10102ef847f83aa2ceb028db575c" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-386.tar.gz\" \t&& echo \"619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5  go$GO_VERSION.linux-386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-386.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:2cf7a9861ddf3162957e98388d44e6e35091f2597501cb892b57b3917cbbc1c7" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:cfa6a06609febd0c5ca17a22954d2aab730491e6fffad2c68a5692bd655152e5" [label="mkdir{path=/go}" shape="note"];
  "sha256:e14cbda4a3d103826d2533825355813f5a27de00d45173fbc5c37e43ee531d52" [label="sha256:e14cbda4a3d103826d2533825355813f5a27de00d45173fbc5c37e43ee531d52" shape="plaintext"];
  "sha256:5746f61525f9d0b87573f684bb0935e5680029a3f5aee282c32bd3177c6a150b" -> "sha256:1df7084a6f8c3c6980534eba3085aea5b40e45ef69d4f48ea4201c672a4e8cfe" [label=""];
  "sha256:1df7084a6f8c3c6980534eba3085aea5b40e45ef69d4f48ea4201c672a4e8cfe" -> "sha256:d1f09c4499d8ea1ba1afd16f11011931b0ba10102ef847f83aa2ceb028db575c" [label=""];
  "sha256:d1f09c4499d8ea1ba1afd16f11011931b0ba10102ef847f83aa2ceb028db575c" -> "sha256:2cf7a9861ddf3162957e98388d44e6e35091f2597501cb892b57b3917cbbc1c7" [label=""];
  "sha256:2cf7a9861ddf3162957e98388d44e6e35091f2597501cb892b57b3917cbbc1c7" -> "sha256:cfa6a06609febd0c5ca17a22954d2aab730491e6fffad2c68a5692bd655152e5" [label=""];
  "sha256:cfa6a06609febd0c5ca17a22954d2aab730491e6fffad2c68a5692bd655152e5" -> "sha256:e14cbda4a3d103826d2533825355813f5a27de00d45173fbc5c37e43ee531d52" [label=""];
}


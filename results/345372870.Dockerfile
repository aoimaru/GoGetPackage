[app/sources/345372870.Dockerfile]
digraph {
  "sha256:14f882241c0235c22f45dc7f97647ac70ff55464ae084b2039f868ea99eb62cb" [label="docker-image://docker.io/balenalib/intel-edison-alpine:edge-run" shape="ellipse"];
  "sha256:2f9e8f1a612c73a818981af8e923b3749289cc5300b9de5a44b94c0234d5842f" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:26f08b24a54216d2b06b1730282bb32b54d639ffabf942aa362b154a74cbc11b" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:9db61664cc993b2561fde323ecd06cad728928b229959bdc6c74456e3094f7f1" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-i386.tar.gz\" \t&& echo \"7f91d1816d92bdd52693555403be54d1b868df4e7a70074effab8d0d80d6ab7f  go$GO_VERSION.linux-alpine-i386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-i386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-i386.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:c696af773d52d8d5f1b6e8835db5187fbb61ff31b8ebde8324be498037b7447f" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:0bb5f1254a66be1e96c9e2b075bfea7a7d11795656e69e8ed6f9aa7ee7367538" [label="mkdir{path=/go}" shape="note"];
  "sha256:f2750dce406f6e3e5f413582b2c50644471d601fcf964e0ac802f375706e04bb" [label="sha256:f2750dce406f6e3e5f413582b2c50644471d601fcf964e0ac802f375706e04bb" shape="plaintext"];
  "sha256:14f882241c0235c22f45dc7f97647ac70ff55464ae084b2039f868ea99eb62cb" -> "sha256:2f9e8f1a612c73a818981af8e923b3749289cc5300b9de5a44b94c0234d5842f" [label=""];
  "sha256:2f9e8f1a612c73a818981af8e923b3749289cc5300b9de5a44b94c0234d5842f" -> "sha256:26f08b24a54216d2b06b1730282bb32b54d639ffabf942aa362b154a74cbc11b" [label=""];
  "sha256:26f08b24a54216d2b06b1730282bb32b54d639ffabf942aa362b154a74cbc11b" -> "sha256:9db61664cc993b2561fde323ecd06cad728928b229959bdc6c74456e3094f7f1" [label=""];
  "sha256:9db61664cc993b2561fde323ecd06cad728928b229959bdc6c74456e3094f7f1" -> "sha256:c696af773d52d8d5f1b6e8835db5187fbb61ff31b8ebde8324be498037b7447f" [label=""];
  "sha256:c696af773d52d8d5f1b6e8835db5187fbb61ff31b8ebde8324be498037b7447f" -> "sha256:0bb5f1254a66be1e96c9e2b075bfea7a7d11795656e69e8ed6f9aa7ee7367538" [label=""];
  "sha256:0bb5f1254a66be1e96c9e2b075bfea7a7d11795656e69e8ed6f9aa7ee7367538" -> "sha256:f2750dce406f6e3e5f413582b2c50644471d601fcf964e0ac802f375706e04bb" [label=""];
}


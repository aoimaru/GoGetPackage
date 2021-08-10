[app/sources/345363452.Dockerfile]
digraph {
  "sha256:d2bf0421eddf987773e029df8a8bfeb71a1563f00c42bdfbd99f852680d5890e" [label="docker-image://docker.io/balenalib/apalis-imx6q-alpine:edge-build" shape="ellipse"];
  "sha256:e82bc82c03ede6dca02ed9a6c5b493416deb689e8b5301b083c8bbe8459d32c0" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:46f2ced585e78f3d1318ae59615b06a0013592f652f3c12f1a07dd9b46cd0394" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:e54d2237322b23d7554532ae6b3b34904ab24af6315785b4f1e1db4f19a80627" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:103f7a8c3e211da866e61a4dca641f1e3463c7ea3e0a924364d862d0e5f144a0" [label="mkdir{path=/go}" shape="note"];
  "sha256:02d7b08acc81459ae1de870487f913dd51c520eb24993ce5815bbc9e908ba001" [label="sha256:02d7b08acc81459ae1de870487f913dd51c520eb24993ce5815bbc9e908ba001" shape="plaintext"];
  "sha256:d2bf0421eddf987773e029df8a8bfeb71a1563f00c42bdfbd99f852680d5890e" -> "sha256:e82bc82c03ede6dca02ed9a6c5b493416deb689e8b5301b083c8bbe8459d32c0" [label=""];
  "sha256:e82bc82c03ede6dca02ed9a6c5b493416deb689e8b5301b083c8bbe8459d32c0" -> "sha256:46f2ced585e78f3d1318ae59615b06a0013592f652f3c12f1a07dd9b46cd0394" [label=""];
  "sha256:46f2ced585e78f3d1318ae59615b06a0013592f652f3c12f1a07dd9b46cd0394" -> "sha256:e54d2237322b23d7554532ae6b3b34904ab24af6315785b4f1e1db4f19a80627" [label=""];
  "sha256:e54d2237322b23d7554532ae6b3b34904ab24af6315785b4f1e1db4f19a80627" -> "sha256:103f7a8c3e211da866e61a4dca641f1e3463c7ea3e0a924364d862d0e5f144a0" [label=""];
  "sha256:103f7a8c3e211da866e61a4dca641f1e3463c7ea3e0a924364d862d0e5f144a0" -> "sha256:02d7b08acc81459ae1de870487f913dd51c520eb24993ce5815bbc9e908ba001" [label=""];
}


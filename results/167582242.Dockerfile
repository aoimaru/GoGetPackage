[app/sources/167582242.Dockerfile]
digraph {
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:8e35e33de57258ff60d6a5c6b3ba6b76249224eb3731b71d7798392822f42fcd" [label="/bin/sh -c apt-get update -y && apt-get install --no-install-recommends -y -q                          curl                          build-essential                          ca-certificates                          git mercurial bzr                && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:33c550d2f8a11a12948b90d17230686f0d711c5da53b4f7932bb0067150b6d79" [label="/bin/sh -c mkdir /goroot && mkdir /gopath" shape="box"];
  "sha256:f4a8e51ba339c01d3b91e3c74ae84210abd00f44004d9acd703a9d1d79dd4ffd" [label="/bin/sh -c curl https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz            | tar xvzf - -C /goroot --strip-components=1" shape="box"];
  "sha256:52bacd97d28536b74399dbbca4008233867c2ef2b07b70c7e99dd484a02ee829" [label="/bin/sh -c go get github.com/mitchellh/gox" shape="box"];
  "sha256:59d290b5650f5ab0fc9c0229fc63d55ade885bd17c2568d25638a6db23d0cc90" [label="/bin/sh -c gox -build-toolchain" shape="box"];
  "sha256:fc4d538f38149520d09eb6095b859cc7beedff74db211a243516b1729d942977" [label="sha256:fc4d538f38149520d09eb6095b859cc7beedff74db211a243516b1729d942977" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:8e35e33de57258ff60d6a5c6b3ba6b76249224eb3731b71d7798392822f42fcd" [label=""];
  "sha256:8e35e33de57258ff60d6a5c6b3ba6b76249224eb3731b71d7798392822f42fcd" -> "sha256:33c550d2f8a11a12948b90d17230686f0d711c5da53b4f7932bb0067150b6d79" [label=""];
  "sha256:33c550d2f8a11a12948b90d17230686f0d711c5da53b4f7932bb0067150b6d79" -> "sha256:f4a8e51ba339c01d3b91e3c74ae84210abd00f44004d9acd703a9d1d79dd4ffd" [label=""];
  "sha256:f4a8e51ba339c01d3b91e3c74ae84210abd00f44004d9acd703a9d1d79dd4ffd" -> "sha256:52bacd97d28536b74399dbbca4008233867c2ef2b07b70c7e99dd484a02ee829" [label=""];
  "sha256:52bacd97d28536b74399dbbca4008233867c2ef2b07b70c7e99dd484a02ee829" -> "sha256:59d290b5650f5ab0fc9c0229fc63d55ade885bd17c2568d25638a6db23d0cc90" [label=""];
  "sha256:59d290b5650f5ab0fc9c0229fc63d55ade885bd17c2568d25638a6db23d0cc90" -> "sha256:fc4d538f38149520d09eb6095b859cc7beedff74db211a243516b1729d942977" [label=""];
}


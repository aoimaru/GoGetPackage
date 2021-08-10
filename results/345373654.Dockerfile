[app/sources/345373654.Dockerfile]
digraph {
  "sha256:6c89d7ca8effa82f15a14c2dfb5b2a5f98be553ecf8216788904cbc8914f01a0" [label="docker-image://docker.io/balenalib/kitra710-ubuntu:trusty-run" shape="ellipse"];
  "sha256:c5eff9934dbfb192ed021fd37b5cd2854c1175f5e383e8d961bd9ee0678db066" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e1bb881af6f458862d79948e6e28d3b63879aafe30db839161e3a0abf95cb974" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:dc8e2f41766cac61014b8f4aa9d42988845ce1386c307554f6a5ba4e8ba37c28" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:4ac3e3ff84a191d4b25c5348a70bc351678ac02a29ec85f7159881f8341fa475" [label="mkdir{path=/go}" shape="note"];
  "sha256:b0efd4e0adc1a71d5391de6c79568ddb6cecb6b2905121abb15586fa79f433e6" [label="sha256:b0efd4e0adc1a71d5391de6c79568ddb6cecb6b2905121abb15586fa79f433e6" shape="plaintext"];
  "sha256:6c89d7ca8effa82f15a14c2dfb5b2a5f98be553ecf8216788904cbc8914f01a0" -> "sha256:c5eff9934dbfb192ed021fd37b5cd2854c1175f5e383e8d961bd9ee0678db066" [label=""];
  "sha256:c5eff9934dbfb192ed021fd37b5cd2854c1175f5e383e8d961bd9ee0678db066" -> "sha256:e1bb881af6f458862d79948e6e28d3b63879aafe30db839161e3a0abf95cb974" [label=""];
  "sha256:e1bb881af6f458862d79948e6e28d3b63879aafe30db839161e3a0abf95cb974" -> "sha256:dc8e2f41766cac61014b8f4aa9d42988845ce1386c307554f6a5ba4e8ba37c28" [label=""];
  "sha256:dc8e2f41766cac61014b8f4aa9d42988845ce1386c307554f6a5ba4e8ba37c28" -> "sha256:4ac3e3ff84a191d4b25c5348a70bc351678ac02a29ec85f7159881f8341fa475" [label=""];
  "sha256:4ac3e3ff84a191d4b25c5348a70bc351678ac02a29ec85f7159881f8341fa475" -> "sha256:b0efd4e0adc1a71d5391de6c79568ddb6cecb6b2905121abb15586fa79f433e6" [label=""];
}


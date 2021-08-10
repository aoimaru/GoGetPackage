[app/sources/345363379.Dockerfile]
digraph {
  "sha256:60c9a7e49c2cde67334b002c3bf52484cdcfc746ff3b57ffd93f10669173baa6" [label="docker-image://docker.io/balenalib/amd64-fedora:29-run" shape="ellipse"];
  "sha256:7cdfcf060e36b9341220c76c2266fbb37b53f0a863527da210bc8ffcd68f3f1c" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:e8b27a0ec372ab183e64a30d63153c04d14c67f8f9dedad72c022348bebd8943" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz" shape="box"];
  "sha256:789abc07d1bf4ee641be8957297781ac35519d5ed58d48a01eb28490daa2c2ec" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:b9eac2fb0aac4631effd1c5fef708f6fc7175166c8ea55706117f8aaae5d05b0" [label="mkdir{path=/go}" shape="note"];
  "sha256:bb110406cd353ff8d1a7cd83457b99f631c5d409f419c0978c31a46b956e79fe" [label="sha256:bb110406cd353ff8d1a7cd83457b99f631c5d409f419c0978c31a46b956e79fe" shape="plaintext"];
  "sha256:60c9a7e49c2cde67334b002c3bf52484cdcfc746ff3b57ffd93f10669173baa6" -> "sha256:7cdfcf060e36b9341220c76c2266fbb37b53f0a863527da210bc8ffcd68f3f1c" [label=""];
  "sha256:7cdfcf060e36b9341220c76c2266fbb37b53f0a863527da210bc8ffcd68f3f1c" -> "sha256:e8b27a0ec372ab183e64a30d63153c04d14c67f8f9dedad72c022348bebd8943" [label=""];
  "sha256:e8b27a0ec372ab183e64a30d63153c04d14c67f8f9dedad72c022348bebd8943" -> "sha256:789abc07d1bf4ee641be8957297781ac35519d5ed58d48a01eb28490daa2c2ec" [label=""];
  "sha256:789abc07d1bf4ee641be8957297781ac35519d5ed58d48a01eb28490daa2c2ec" -> "sha256:b9eac2fb0aac4631effd1c5fef708f6fc7175166c8ea55706117f8aaae5d05b0" [label=""];
  "sha256:b9eac2fb0aac4631effd1c5fef708f6fc7175166c8ea55706117f8aaae5d05b0" -> "sha256:bb110406cd353ff8d1a7cd83457b99f631c5d409f419c0978c31a46b956e79fe" [label=""];
}


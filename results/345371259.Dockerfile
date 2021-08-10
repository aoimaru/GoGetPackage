[app/sources/345371259.Dockerfile]
digraph {
  "sha256:674b4f507edebbc8c0092c2a0f5107e01c7fa1d3a65d26d33dc214d993b03478" [label="docker-image://docker.io/balenalib/blackboard-tx2-fedora:30-run" shape="ellipse"];
  "sha256:a346ca576d6386de956c441b0dd8ae19d856af544c32f4489a7aaf23d4cc3f48" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:b8f6081d7debcad7d6a5be495a10a19c1a661c671153d2913468ca42ea1f1469" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:91248ee039450e1e1831bbbbf240f5b51b30396f2dbaa478eb75e4d9ed7ad4a1" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:61ac89eb5aaa2991e8e1336cf6ee53826c44ca678e5ef104557dc9f00c1d6ca7" [label="mkdir{path=/go}" shape="note"];
  "sha256:1b8eb716b2006fe37a38eefe9c971240a60f0e9ebd8a3143659281dd0a62d163" [label="sha256:1b8eb716b2006fe37a38eefe9c971240a60f0e9ebd8a3143659281dd0a62d163" shape="plaintext"];
  "sha256:674b4f507edebbc8c0092c2a0f5107e01c7fa1d3a65d26d33dc214d993b03478" -> "sha256:a346ca576d6386de956c441b0dd8ae19d856af544c32f4489a7aaf23d4cc3f48" [label=""];
  "sha256:a346ca576d6386de956c441b0dd8ae19d856af544c32f4489a7aaf23d4cc3f48" -> "sha256:b8f6081d7debcad7d6a5be495a10a19c1a661c671153d2913468ca42ea1f1469" [label=""];
  "sha256:b8f6081d7debcad7d6a5be495a10a19c1a661c671153d2913468ca42ea1f1469" -> "sha256:91248ee039450e1e1831bbbbf240f5b51b30396f2dbaa478eb75e4d9ed7ad4a1" [label=""];
  "sha256:91248ee039450e1e1831bbbbf240f5b51b30396f2dbaa478eb75e4d9ed7ad4a1" -> "sha256:61ac89eb5aaa2991e8e1336cf6ee53826c44ca678e5ef104557dc9f00c1d6ca7" [label=""];
  "sha256:61ac89eb5aaa2991e8e1336cf6ee53826c44ca678e5ef104557dc9f00c1d6ca7" -> "sha256:1b8eb716b2006fe37a38eefe9c971240a60f0e9ebd8a3143659281dd0a62d163" [label=""];
}


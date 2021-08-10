[app/sources/345368155.Dockerfile]
digraph {
  "sha256:c698cbee77688e6f75b586369a6ca2a7bfd24fddefe5ee449eff5227caf99866" [label="docker-image://docker.io/balenalib/artik710-fedora:26-run" shape="ellipse"];
  "sha256:98e36813e562888c0a197af104e4839046e22cf313e9e1795983f3291dfef87d" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:584e12e386edd715889ea8487badf7248241db64769f365e7f7ec271a4beb26b" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:64cae0331c1ceb0f016a574f1d13a8a8b9f9074feb5b728d82d48daa1ffa8619" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:882c2d6c900fefb979b7565a32ee6277e1d7315e96c54490a7830abcef3b2cac" [label="mkdir{path=/go}" shape="note"];
  "sha256:78120ee87b25482ab7320875bf77d136b520e17edf4fce96c02ad0c22ac46b4f" [label="sha256:78120ee87b25482ab7320875bf77d136b520e17edf4fce96c02ad0c22ac46b4f" shape="plaintext"];
  "sha256:c698cbee77688e6f75b586369a6ca2a7bfd24fddefe5ee449eff5227caf99866" -> "sha256:98e36813e562888c0a197af104e4839046e22cf313e9e1795983f3291dfef87d" [label=""];
  "sha256:98e36813e562888c0a197af104e4839046e22cf313e9e1795983f3291dfef87d" -> "sha256:584e12e386edd715889ea8487badf7248241db64769f365e7f7ec271a4beb26b" [label=""];
  "sha256:584e12e386edd715889ea8487badf7248241db64769f365e7f7ec271a4beb26b" -> "sha256:64cae0331c1ceb0f016a574f1d13a8a8b9f9074feb5b728d82d48daa1ffa8619" [label=""];
  "sha256:64cae0331c1ceb0f016a574f1d13a8a8b9f9074feb5b728d82d48daa1ffa8619" -> "sha256:882c2d6c900fefb979b7565a32ee6277e1d7315e96c54490a7830abcef3b2cac" [label=""];
  "sha256:882c2d6c900fefb979b7565a32ee6277e1d7315e96c54490a7830abcef3b2cac" -> "sha256:78120ee87b25482ab7320875bf77d136b520e17edf4fce96c02ad0c22ac46b4f" [label=""];
}


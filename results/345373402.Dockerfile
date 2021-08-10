[app/sources/345373402.Dockerfile]
digraph {
  "sha256:2f5a7cc80d6e00b7ee22e164cd96ee9c976bf73aa66c080321d793906ad1ab63" [label="docker-image://docker.io/balenalib/jetson-tx2-fedora:29-run" shape="ellipse"];
  "sha256:d2752ac6bedf548eff5711b31e2ce8391b90f9ebc026d7089514cf0d8c6bb5f7" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:dab5ba0636aa4896049775540892e4d9beebfc0dc6b36e6b9320034b9b95f15b" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:1b03072d6f0c5dc8964627bd7a88fa04a2b1346033e2d875e327245b69bd5df6" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:947670263df2b78418a74bd65986b054a5b5118efdce2d6564e679c57af2ce13" [label="mkdir{path=/go}" shape="note"];
  "sha256:ee0f2d144c4f199a75afde417aa97767a4dad5ae4405f31b3d83ecf7e384ba43" [label="sha256:ee0f2d144c4f199a75afde417aa97767a4dad5ae4405f31b3d83ecf7e384ba43" shape="plaintext"];
  "sha256:2f5a7cc80d6e00b7ee22e164cd96ee9c976bf73aa66c080321d793906ad1ab63" -> "sha256:d2752ac6bedf548eff5711b31e2ce8391b90f9ebc026d7089514cf0d8c6bb5f7" [label=""];
  "sha256:d2752ac6bedf548eff5711b31e2ce8391b90f9ebc026d7089514cf0d8c6bb5f7" -> "sha256:dab5ba0636aa4896049775540892e4d9beebfc0dc6b36e6b9320034b9b95f15b" [label=""];
  "sha256:dab5ba0636aa4896049775540892e4d9beebfc0dc6b36e6b9320034b9b95f15b" -> "sha256:1b03072d6f0c5dc8964627bd7a88fa04a2b1346033e2d875e327245b69bd5df6" [label=""];
  "sha256:1b03072d6f0c5dc8964627bd7a88fa04a2b1346033e2d875e327245b69bd5df6" -> "sha256:947670263df2b78418a74bd65986b054a5b5118efdce2d6564e679c57af2ce13" [label=""];
  "sha256:947670263df2b78418a74bd65986b054a5b5118efdce2d6564e679c57af2ce13" -> "sha256:ee0f2d144c4f199a75afde417aa97767a4dad5ae4405f31b3d83ecf7e384ba43" [label=""];
}


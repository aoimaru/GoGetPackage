[app/sources/345378512.Dockerfile]
digraph {
  "sha256:b1f0afae82beb8a32f5332296596aa3206a353db47952be025adc4cbcf66a5f7" [label="docker-image://docker.io/balenalib/zc702-zynq7-fedora:28-build" shape="ellipse"];
  "sha256:35fba1681d607dc9dbc63ad55549efb8c67805652353b0e50fc598df797d2f09" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:33cb095fccb5d8c088a85d6c69a2041f294d4c216da5722ba9b12fad6f3633b7" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:45a0e61da6598ec0a1366ad8979578b66d6c51d2634c93bdeb603cbd0194b95e" [label="mkdir{path=/go}" shape="note"];
  "sha256:0c79a696e43931218790b465c1f2695137e2a1850238a07db1d096765d9422f9" [label="sha256:0c79a696e43931218790b465c1f2695137e2a1850238a07db1d096765d9422f9" shape="plaintext"];
  "sha256:b1f0afae82beb8a32f5332296596aa3206a353db47952be025adc4cbcf66a5f7" -> "sha256:35fba1681d607dc9dbc63ad55549efb8c67805652353b0e50fc598df797d2f09" [label=""];
  "sha256:35fba1681d607dc9dbc63ad55549efb8c67805652353b0e50fc598df797d2f09" -> "sha256:33cb095fccb5d8c088a85d6c69a2041f294d4c216da5722ba9b12fad6f3633b7" [label=""];
  "sha256:33cb095fccb5d8c088a85d6c69a2041f294d4c216da5722ba9b12fad6f3633b7" -> "sha256:45a0e61da6598ec0a1366ad8979578b66d6c51d2634c93bdeb603cbd0194b95e" [label=""];
  "sha256:45a0e61da6598ec0a1366ad8979578b66d6c51d2634c93bdeb603cbd0194b95e" -> "sha256:0c79a696e43931218790b465c1f2695137e2a1850238a07db1d096765d9422f9" [label=""];
}


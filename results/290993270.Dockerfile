[app/sources/290993270.Dockerfile]
digraph {
  "sha256:e47dfe0832bc775793a4d2f873ed7438043233b4077a774bfaf3ccb85cbc1228" [label="local://context" shape="ellipse"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:4f0a5bed4440476aed73d0ec51d86629208d414d3536a43c00b06d5284a0becf" [label="/bin/sh -c apt-get update && apt-get install -y         curl         jq" shape="box"];
  "sha256:7288130d5b7739334804622e9ccdaf9d98e6a8d4d7a0a41640db1930e6b2078f" [label="/bin/sh -c mkdir -p \"${GOPATH}/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:127e663e72a8e0f0643a1f955c6f9ae26b053569ce9c4c8735a8294259475048" [label="/bin/sh -c curl -LO https://storage.googleapis.com/golang/go${GOLANG_VERSION}.linux-amd64.tar.gz &&  tar -C /usr/local -xvzf go${GOLANG_VERSION}.linux-amd64.tar.gz > /dev/null 2>&1 &&  rm -rf go${GOLANG_VERSION}.linux-amd64.tar.gz" shape="box"];
  "sha256:1934fc44698690e9e1fe14d5749c51ef195919ae8bf0045a2515e188066c4d1f" [label="/bin/sh -c mkdir -p $HOME/ais/bin;" shape="box"];
  "sha256:99054f3dfe0cf6d3eb9bcb6685f41358935e0b3ba00f1a20444511fa5cb51ea9" [label="/bin/sh -c mkdir -p $HOME/ais/pkg;" shape="box"];
  "sha256:2d151e5cf2d9ef9a07b9ab3b01e5d23a27109e515f6ea9e599cbffd544d7c609" [label="/bin/sh -c mkdir -p $HOME/ais/src;" shape="box"];
  "sha256:57c2b76a8ed1856cdedee55a6513bbb3c2bab82edd732a19855c977cc36e5a1b" [label="/bin/sh -c go get -v github.com/NVIDIA/aistore/ais" shape="box"];
  "sha256:9d79f51d61575289305d933d34b00f0e77ed3c913bc1b8c833ea93348631c602" [label="copy{src=/ais_test/run_unittest.sh, dest=/root/run_unittest.sh}" shape="note"];
  "sha256:d4d17ec081337b96a00e05395b9add7111b86f365b682b77ec67c54738199583" [label="/bin/sh -c chmod a+x /root/run_unittest.sh" shape="box"];
  "sha256:e1577cbb60c403a7c74cf633bf9ccfa2fc1d38092ad1f3cc4f127857e56e6f9c" [label="sha256:e1577cbb60c403a7c74cf633bf9ccfa2fc1d38092ad1f3cc4f127857e56e6f9c" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:4f0a5bed4440476aed73d0ec51d86629208d414d3536a43c00b06d5284a0becf" [label=""];
  "sha256:4f0a5bed4440476aed73d0ec51d86629208d414d3536a43c00b06d5284a0becf" -> "sha256:7288130d5b7739334804622e9ccdaf9d98e6a8d4d7a0a41640db1930e6b2078f" [label=""];
  "sha256:7288130d5b7739334804622e9ccdaf9d98e6a8d4d7a0a41640db1930e6b2078f" -> "sha256:127e663e72a8e0f0643a1f955c6f9ae26b053569ce9c4c8735a8294259475048" [label=""];
  "sha256:127e663e72a8e0f0643a1f955c6f9ae26b053569ce9c4c8735a8294259475048" -> "sha256:1934fc44698690e9e1fe14d5749c51ef195919ae8bf0045a2515e188066c4d1f" [label=""];
  "sha256:1934fc44698690e9e1fe14d5749c51ef195919ae8bf0045a2515e188066c4d1f" -> "sha256:99054f3dfe0cf6d3eb9bcb6685f41358935e0b3ba00f1a20444511fa5cb51ea9" [label=""];
  "sha256:99054f3dfe0cf6d3eb9bcb6685f41358935e0b3ba00f1a20444511fa5cb51ea9" -> "sha256:2d151e5cf2d9ef9a07b9ab3b01e5d23a27109e515f6ea9e599cbffd544d7c609" [label=""];
  "sha256:2d151e5cf2d9ef9a07b9ab3b01e5d23a27109e515f6ea9e599cbffd544d7c609" -> "sha256:57c2b76a8ed1856cdedee55a6513bbb3c2bab82edd732a19855c977cc36e5a1b" [label=""];
  "sha256:57c2b76a8ed1856cdedee55a6513bbb3c2bab82edd732a19855c977cc36e5a1b" -> "sha256:9d79f51d61575289305d933d34b00f0e77ed3c913bc1b8c833ea93348631c602" [label=""];
  "sha256:e47dfe0832bc775793a4d2f873ed7438043233b4077a774bfaf3ccb85cbc1228" -> "sha256:9d79f51d61575289305d933d34b00f0e77ed3c913bc1b8c833ea93348631c602" [label=""];
  "sha256:9d79f51d61575289305d933d34b00f0e77ed3c913bc1b8c833ea93348631c602" -> "sha256:d4d17ec081337b96a00e05395b9add7111b86f365b682b77ec67c54738199583" [label=""];
  "sha256:d4d17ec081337b96a00e05395b9add7111b86f365b682b77ec67c54738199583" -> "sha256:e1577cbb60c403a7c74cf633bf9ccfa2fc1d38092ad1f3cc4f127857e56e6f9c" [label=""];
}


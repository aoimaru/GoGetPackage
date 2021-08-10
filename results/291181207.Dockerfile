[app/sources/291181207.Dockerfile]
digraph {
  "sha256:bda4bcea02224f6df7154ed47d08507cc43fe2d9486d08530d2e2f71ddea44a3" [label="docker-image://docker.io/circleci/mongo:4.0.7-xenial@sha256:70b26d45068194f17a92a1f138eecb9118f7797b3792999582623eeef8c6f360" shape="ellipse"];
  "sha256:e5abe9e4be625ab3b8eb4e7566997ae28383e7dcaa6093149678fb2c234f77f7" [label="/bin/sh -c sed -i '/exec \"$@\"/i mkdir \\/dev\\/shm\\/mongo' /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:566ea81ea3cd569493e0c4bd09835f0bc0003eed4cbc7fd04369a8ab5a018c61" [label="sha256:566ea81ea3cd569493e0c4bd09835f0bc0003eed4cbc7fd04369a8ab5a018c61" shape="plaintext"];
  "sha256:bda4bcea02224f6df7154ed47d08507cc43fe2d9486d08530d2e2f71ddea44a3" -> "sha256:e5abe9e4be625ab3b8eb4e7566997ae28383e7dcaa6093149678fb2c234f77f7" [label=""];
  "sha256:e5abe9e4be625ab3b8eb4e7566997ae28383e7dcaa6093149678fb2c234f77f7" -> "sha256:566ea81ea3cd569493e0c4bd09835f0bc0003eed4cbc7fd04369a8ab5a018c61" [label=""];
}


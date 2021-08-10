[app/sources/210060421.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/hpcloud/tail/" shape="box"];
  "sha256:00b2de28c992e9d4a4718556625c9ff607b7b41fd39e7fcb017dd20a214aaf5c" [label="local://context" shape="ellipse"];
  "sha256:27de47d0b2d6adf0cba87a6f691ad38352d581e4c976d645e332e6017da2e206" [label="copy{src=/, dest=/src/github.com/hpcloud/tail/}" shape="note"];
  "sha256:56694b44303d1f1a3a273047e200f9085dd816574deaeb60b4c7a64ab81f8839" [label="/bin/sh -c go get -v github.com/hpcloud/tail" shape="box"];
  "sha256:3ae41db76b8776dc3e77a85c0eb875f7a089a6719790142e984ac2b8d54f421d" [label="/bin/sh -c go test -v github.com/hpcloud/tail" shape="box"];
  "sha256:90ed7140cc14413f02ef5d747179493d18fc5c9bf1a665244c9478da941947f9" [label="/bin/sh -c go install -v github.com/hpcloud/tail" shape="box"];
  "sha256:227352032844ac02ede2c6661280e1abf452d6056d54a56a6b5d84c51ae306d5" [label="/bin/sh -c go install -v github.com/hpcloud/tail/cmd/gotail" shape="box"];
  "sha256:05304cc9477f966d5094cfaba375444497ed1b409d461fdbecd5bf13b39637fb" [label="/bin/sh -c $GOPATH/bin/gotail -h || true" shape="box"];
  "sha256:c4bf68dfcfdea5ae120e657bbe09fc2e1fa1c2983cb7c5369d94cb9e0f74d870" [label="sha256:c4bf68dfcfdea5ae120e657bbe09fc2e1fa1c2983cb7c5369d94cb9e0f74d870" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label=""];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" -> "sha256:27de47d0b2d6adf0cba87a6f691ad38352d581e4c976d645e332e6017da2e206" [label=""];
  "sha256:00b2de28c992e9d4a4718556625c9ff607b7b41fd39e7fcb017dd20a214aaf5c" -> "sha256:27de47d0b2d6adf0cba87a6f691ad38352d581e4c976d645e332e6017da2e206" [label=""];
  "sha256:27de47d0b2d6adf0cba87a6f691ad38352d581e4c976d645e332e6017da2e206" -> "sha256:56694b44303d1f1a3a273047e200f9085dd816574deaeb60b4c7a64ab81f8839" [label=""];
  "sha256:56694b44303d1f1a3a273047e200f9085dd816574deaeb60b4c7a64ab81f8839" -> "sha256:3ae41db76b8776dc3e77a85c0eb875f7a089a6719790142e984ac2b8d54f421d" [label=""];
  "sha256:3ae41db76b8776dc3e77a85c0eb875f7a089a6719790142e984ac2b8d54f421d" -> "sha256:90ed7140cc14413f02ef5d747179493d18fc5c9bf1a665244c9478da941947f9" [label=""];
  "sha256:90ed7140cc14413f02ef5d747179493d18fc5c9bf1a665244c9478da941947f9" -> "sha256:227352032844ac02ede2c6661280e1abf452d6056d54a56a6b5d84c51ae306d5" [label=""];
  "sha256:227352032844ac02ede2c6661280e1abf452d6056d54a56a6b5d84c51ae306d5" -> "sha256:05304cc9477f966d5094cfaba375444497ed1b409d461fdbecd5bf13b39637fb" [label=""];
  "sha256:05304cc9477f966d5094cfaba375444497ed1b409d461fdbecd5bf13b39637fb" -> "sha256:c4bf68dfcfdea5ae120e657bbe09fc2e1fa1c2983cb7c5369d94cb9e0f74d870" [label=""];
}


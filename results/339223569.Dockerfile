[app/sources/339223569.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/hpcloud/tail/" shape="box"];
  "sha256:b84d703e7d7cdd7228a8720088b6514fe64e98a980ed09543e75168cae81f397" [label="local://context" shape="ellipse"];
  "sha256:5cb7d9df98b96430fe3526b0a85208e88932ea67a2188b304ca31d0085ce6d5d" [label="copy{src=/, dest=/src/github.com/hpcloud/tail/}" shape="note"];
  "sha256:9402790f5e95de827c22ca62faff95a5bbb9db4c380161bab089fae233c55d69" [label="/bin/sh -c go get -v github.com/hpcloud/tail" shape="box"];
  "sha256:cdd3a64a4f4bd0462e74bc270d64003f4387fd8f4b38e189f127cb06dd3181d8" [label="/bin/sh -c go test -v github.com/hpcloud/tail" shape="box"];
  "sha256:683a36d13a41861dad3c7cc65a4af4e25995ba51dff4414c485f08b76b7b0b58" [label="/bin/sh -c go install -v github.com/hpcloud/tail" shape="box"];
  "sha256:d13d42ec323462ba5f020d4bc3942f7427196c67840abd0d229e7770688eec5b" [label="/bin/sh -c go install -v github.com/hpcloud/tail/cmd/gotail" shape="box"];
  "sha256:9c9a17b19d4b3e9f0894c060495e19538061c4750c75513239169bc5ebace5a8" [label="/bin/sh -c $GOPATH/bin/gotail -h || true" shape="box"];
  "sha256:ca15d1de25e6f90482ac3ecf4ff7e725bdffdecefcbb0a4c3cfe7a31c0306f77" [label="sha256:ca15d1de25e6f90482ac3ecf4ff7e725bdffdecefcbb0a4c3cfe7a31c0306f77" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label=""];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" -> "sha256:5cb7d9df98b96430fe3526b0a85208e88932ea67a2188b304ca31d0085ce6d5d" [label=""];
  "sha256:b84d703e7d7cdd7228a8720088b6514fe64e98a980ed09543e75168cae81f397" -> "sha256:5cb7d9df98b96430fe3526b0a85208e88932ea67a2188b304ca31d0085ce6d5d" [label=""];
  "sha256:5cb7d9df98b96430fe3526b0a85208e88932ea67a2188b304ca31d0085ce6d5d" -> "sha256:9402790f5e95de827c22ca62faff95a5bbb9db4c380161bab089fae233c55d69" [label=""];
  "sha256:9402790f5e95de827c22ca62faff95a5bbb9db4c380161bab089fae233c55d69" -> "sha256:cdd3a64a4f4bd0462e74bc270d64003f4387fd8f4b38e189f127cb06dd3181d8" [label=""];
  "sha256:cdd3a64a4f4bd0462e74bc270d64003f4387fd8f4b38e189f127cb06dd3181d8" -> "sha256:683a36d13a41861dad3c7cc65a4af4e25995ba51dff4414c485f08b76b7b0b58" [label=""];
  "sha256:683a36d13a41861dad3c7cc65a4af4e25995ba51dff4414c485f08b76b7b0b58" -> "sha256:d13d42ec323462ba5f020d4bc3942f7427196c67840abd0d229e7770688eec5b" [label=""];
  "sha256:d13d42ec323462ba5f020d4bc3942f7427196c67840abd0d229e7770688eec5b" -> "sha256:9c9a17b19d4b3e9f0894c060495e19538061c4750c75513239169bc5ebace5a8" [label=""];
  "sha256:9c9a17b19d4b3e9f0894c060495e19538061c4750c75513239169bc5ebace5a8" -> "sha256:ca15d1de25e6f90482ac3ecf4ff7e725bdffdecefcbb0a4c3cfe7a31c0306f77" [label=""];
}


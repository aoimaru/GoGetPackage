[app/sources/465577737.Dockerfile]
digraph {
  "sha256:11a5cb43c52326221c15f799c36eafc57be0fcad62bebe7069612819da3eb1ef" [label="docker-image://docker.io/library/golang:1.10.2" shape="ellipse"];
  "sha256:02cd9e4ea5227887ebb551355f17871ee65e20c7218bbcd6b6a06e5b7cb7dbea" [label="/bin/sh -c mkdir -p /workspace/golang/src/github.com/nirmata/kube-static-egress-ip" shape="box"];
  "sha256:0433f115b12f0673db693ffd7d448cd938c6b7d3a119fcd499434ae93b271dfc" [label="local://context" shape="ellipse"];
  "sha256:ba34ce7539dd0fffa87903a34e9fb4ee000c77fa1e114d57a59d284d1380a492" [label="copy{src=/, dest=/workspace/golang/src/github.com/nirmata/kube-static-egress-ip}" shape="note"];
  "sha256:6e525d2b7e19360258a1c1ad2a86562a4b41558cfb161d5a6a1c0f04b27bb465" [label="mkdir{path=/workspace/golang/src/github.com/nirmata/kube-static-egress-ip/cmd/static-egressip-controller}" shape="note"];
  "sha256:6d3278e991088882fbf4567dfe4feb61dea08319ab4e4813092f724ac37f820b" [label="/bin/sh -c CGO_ENABLED=0 go install -ldflags \"-s\" -v" shape="box"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:243b545b136811314b7107638f6b211455cb7b856ca6d98cdafdff282b1ffd7f" [label="/bin/sh -c apk --no-cache add iproute2 iptables ipset" shape="box"];
  "sha256:6adc527c8d58cbe63e5efbb71e097bae9f4a1fa52b19f61423b49c0d6fa92c71" [label="mkdir{path=/root}" shape="note"];
  "sha256:d94c9f0ac68538993347e60aa4be85da20709a54f352ad65c73a0531cf2d237d" [label="copy{src=/workspace/golang/bin/static-egressip-controller, dest=/usr/local/bin/static-egressip-controller}" shape="note"];
  "sha256:59cd80e917b52161fb35ecf25371fd51ddd26e269ec355e434dfac732dbf7c91" [label="sha256:59cd80e917b52161fb35ecf25371fd51ddd26e269ec355e434dfac732dbf7c91" shape="plaintext"];
  "sha256:11a5cb43c52326221c15f799c36eafc57be0fcad62bebe7069612819da3eb1ef" -> "sha256:02cd9e4ea5227887ebb551355f17871ee65e20c7218bbcd6b6a06e5b7cb7dbea" [label=""];
  "sha256:02cd9e4ea5227887ebb551355f17871ee65e20c7218bbcd6b6a06e5b7cb7dbea" -> "sha256:ba34ce7539dd0fffa87903a34e9fb4ee000c77fa1e114d57a59d284d1380a492" [label=""];
  "sha256:0433f115b12f0673db693ffd7d448cd938c6b7d3a119fcd499434ae93b271dfc" -> "sha256:ba34ce7539dd0fffa87903a34e9fb4ee000c77fa1e114d57a59d284d1380a492" [label=""];
  "sha256:ba34ce7539dd0fffa87903a34e9fb4ee000c77fa1e114d57a59d284d1380a492" -> "sha256:6e525d2b7e19360258a1c1ad2a86562a4b41558cfb161d5a6a1c0f04b27bb465" [label=""];
  "sha256:6e525d2b7e19360258a1c1ad2a86562a4b41558cfb161d5a6a1c0f04b27bb465" -> "sha256:6d3278e991088882fbf4567dfe4feb61dea08319ab4e4813092f724ac37f820b" [label=""];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:243b545b136811314b7107638f6b211455cb7b856ca6d98cdafdff282b1ffd7f" [label=""];
  "sha256:243b545b136811314b7107638f6b211455cb7b856ca6d98cdafdff282b1ffd7f" -> "sha256:6adc527c8d58cbe63e5efbb71e097bae9f4a1fa52b19f61423b49c0d6fa92c71" [label=""];
  "sha256:6adc527c8d58cbe63e5efbb71e097bae9f4a1fa52b19f61423b49c0d6fa92c71" -> "sha256:d94c9f0ac68538993347e60aa4be85da20709a54f352ad65c73a0531cf2d237d" [label=""];
  "sha256:6d3278e991088882fbf4567dfe4feb61dea08319ab4e4813092f724ac37f820b" -> "sha256:d94c9f0ac68538993347e60aa4be85da20709a54f352ad65c73a0531cf2d237d" [label=""];
  "sha256:d94c9f0ac68538993347e60aa4be85da20709a54f352ad65c73a0531cf2d237d" -> "sha256:59cd80e917b52161fb35ecf25371fd51ddd26e269ec355e434dfac732dbf7c91" [label=""];
}


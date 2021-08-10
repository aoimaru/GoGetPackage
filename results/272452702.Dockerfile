[app/sources/272452702.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:03314a0c8c523c5ad648f873440430501a2d8869d08fa2ca01462ce5c74473bf" [label="/bin/sh -c apt-get update -y &&     apt-get install --no-install-recommends -y -q             build-essential             ca-certificates             curl             git             ruby             ruby-dev             zip &&     gem install bundler" shape="box"];
  "sha256:40913b244e72f129ab5998333b0240861d9a9f1a8a44d5d0e77b61550392d4b8" [label="/bin/sh -c mkdir /goroot &&     mkdir /gopath &&     curl https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz |          tar xzf - -C /goroot --strip-components=1" shape="box"];
  "sha256:8eb79cc7bc5b181c6b1ea834414ca8a0fb2680fb03b7f239511b32da047ff043" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/hashicorp/consul" shape="box"];
  "sha256:ae127eccbe99122559c4088eaa52ed809b41afe4913cab5387c074f9acdfa81b" [label="mkdir{path=/gopath/src/github.com/hashicorp/consul}" shape="note"];
  "sha256:7d6cb14ae70f039ad37eb3c3ab341001d82dbaf5dcc6632fbfe6660af9af5219" [label="sha256:7d6cb14ae70f039ad37eb3c3ab341001d82dbaf5dcc6632fbfe6660af9af5219" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:03314a0c8c523c5ad648f873440430501a2d8869d08fa2ca01462ce5c74473bf" [label=""];
  "sha256:03314a0c8c523c5ad648f873440430501a2d8869d08fa2ca01462ce5c74473bf" -> "sha256:40913b244e72f129ab5998333b0240861d9a9f1a8a44d5d0e77b61550392d4b8" [label=""];
  "sha256:40913b244e72f129ab5998333b0240861d9a9f1a8a44d5d0e77b61550392d4b8" -> "sha256:8eb79cc7bc5b181c6b1ea834414ca8a0fb2680fb03b7f239511b32da047ff043" [label=""];
  "sha256:8eb79cc7bc5b181c6b1ea834414ca8a0fb2680fb03b7f239511b32da047ff043" -> "sha256:ae127eccbe99122559c4088eaa52ed809b41afe4913cab5387c074f9acdfa81b" [label=""];
  "sha256:ae127eccbe99122559c4088eaa52ed809b41afe4913cab5387c074f9acdfa81b" -> "sha256:7d6cb14ae70f039ad37eb3c3ab341001d82dbaf5dcc6632fbfe6660af9af5219" [label=""];
}


[app/sources/129679245.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:e723b42a9f15a6e0682c2d57db7d476d0a182d0468f533f29675b146896703fe" [label="/bin/sh -c apt-get update -y &&     apt-get install --no-install-recommends -y -q             build-essential             ca-certificates             curl             git             zip" shape="box"];
  "sha256:7c4d8c0b89733860a641d880202b2dfeae73b8277d89ffa72ec90d77f9d6ddd0" [label="/bin/sh -c mkdir /goroot &&     mkdir /gopath &&     curl https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz |          tar xzf - -C /goroot --strip-components=1" shape="box"];
  "sha256:eecce7d3c3e4bd9aa7ba07fce501a9d0c33daf577319359cd8f32c93156702b1" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/hashicorp/serf" shape="box"];
  "sha256:3378964dee6465a7b50792c8a08c3b5c27bc55287bfce579d5d7135d5e537f76" [label="mkdir{path=/gopath/src/github.com/hashicorp/serf}" shape="note"];
  "sha256:eadcfa15625271ba5c732795d73be329bb047de579f270949931dd36762c95d4" [label="sha256:eadcfa15625271ba5c732795d73be329bb047de579f270949931dd36762c95d4" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:e723b42a9f15a6e0682c2d57db7d476d0a182d0468f533f29675b146896703fe" [label=""];
  "sha256:e723b42a9f15a6e0682c2d57db7d476d0a182d0468f533f29675b146896703fe" -> "sha256:7c4d8c0b89733860a641d880202b2dfeae73b8277d89ffa72ec90d77f9d6ddd0" [label=""];
  "sha256:7c4d8c0b89733860a641d880202b2dfeae73b8277d89ffa72ec90d77f9d6ddd0" -> "sha256:eecce7d3c3e4bd9aa7ba07fce501a9d0c33daf577319359cd8f32c93156702b1" [label=""];
  "sha256:eecce7d3c3e4bd9aa7ba07fce501a9d0c33daf577319359cd8f32c93156702b1" -> "sha256:3378964dee6465a7b50792c8a08c3b5c27bc55287bfce579d5d7135d5e537f76" [label=""];
  "sha256:3378964dee6465a7b50792c8a08c3b5c27bc55287bfce579d5d7135d5e537f76" -> "sha256:eadcfa15625271ba5c732795d73be329bb047de579f270949931dd36762c95d4" [label=""];
}


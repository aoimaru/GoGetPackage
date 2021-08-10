[app/sources/279893152.Dockerfile]
digraph {
  "sha256:fd7ae76cb27cdcd9a9c67d872cbeddd646a5544abbd563e07b57a11dce7dda58" [label="docker-image://docker.io/library/golang:1.11.5-alpine3.8" shape="ellipse"];
  "sha256:4f60ec91491577d2646d775ef27dcdb85acd878bc8e973f3cd7b156e49ba26cf" [label="/bin/sh -c apk add --no-cache git" shape="box"];
  "sha256:f4bc03f004621f8b0af144ee9ec59d8f3496273e390fe2485002fa76ecc0ff81" [label="/bin/sh -c go get -u gopkg.in/alecthomas/gometalinter.v2" shape="box"];
  "sha256:57d94e89ca0c6f28758f099e64fd1e0bc405f2a8db0c234c7f61a29c99d2bd2c" [label="/bin/sh -c gometalinter.v2 --install" shape="box"];
  "sha256:5609d50831e2ce3bc446c8650774c3ee62171a0dcc5b3f0e738f388f702ad6e2" [label="local://context" shape="ellipse"];
  "sha256:ecc1c1331b1272f953ae2a6d297edec15bd474344af568ca0d81752d46b235b6" [label="copy{src=/, dest=/go/src/github.com/contiv/vpp}" shape="note"];
  "sha256:e8577bf404935abd8ae484e1b25a1084ca0df02d9e37713d9c869a8a00930ccc" [label="mkdir{path=/go/src/github.com/contiv/vpp}" shape="note"];
  "sha256:144977ead58bd38c41d7899fca827f0ecca5582750c2b4f1cfb03eb0e9d7bdbe" [label="sha256:144977ead58bd38c41d7899fca827f0ecca5582750c2b4f1cfb03eb0e9d7bdbe" shape="plaintext"];
  "sha256:fd7ae76cb27cdcd9a9c67d872cbeddd646a5544abbd563e07b57a11dce7dda58" -> "sha256:4f60ec91491577d2646d775ef27dcdb85acd878bc8e973f3cd7b156e49ba26cf" [label=""];
  "sha256:4f60ec91491577d2646d775ef27dcdb85acd878bc8e973f3cd7b156e49ba26cf" -> "sha256:f4bc03f004621f8b0af144ee9ec59d8f3496273e390fe2485002fa76ecc0ff81" [label=""];
  "sha256:f4bc03f004621f8b0af144ee9ec59d8f3496273e390fe2485002fa76ecc0ff81" -> "sha256:57d94e89ca0c6f28758f099e64fd1e0bc405f2a8db0c234c7f61a29c99d2bd2c" [label=""];
  "sha256:57d94e89ca0c6f28758f099e64fd1e0bc405f2a8db0c234c7f61a29c99d2bd2c" -> "sha256:ecc1c1331b1272f953ae2a6d297edec15bd474344af568ca0d81752d46b235b6" [label=""];
  "sha256:5609d50831e2ce3bc446c8650774c3ee62171a0dcc5b3f0e738f388f702ad6e2" -> "sha256:ecc1c1331b1272f953ae2a6d297edec15bd474344af568ca0d81752d46b235b6" [label=""];
  "sha256:ecc1c1331b1272f953ae2a6d297edec15bd474344af568ca0d81752d46b235b6" -> "sha256:e8577bf404935abd8ae484e1b25a1084ca0df02d9e37713d9c869a8a00930ccc" [label=""];
  "sha256:e8577bf404935abd8ae484e1b25a1084ca0df02d9e37713d9c869a8a00930ccc" -> "sha256:144977ead58bd38c41d7899fca827f0ecca5582750c2b4f1cfb03eb0e9d7bdbe" [label=""];
}


[app/sources/290155213.Dockerfile]
digraph {
  "sha256:b978fae666e891f0169f24dbe642e5343b767e3dfae141508f704882b62cc43d" [label="docker-image://docker.io/library/builder-base:latest" shape="ellipse"];
  "sha256:3cfb63b75639a596f3b0df555c956d6803d94e6f1aa3524c48c23735f2c2b038" [label="/bin/sh -c mkdir -p /go/src/github.com/openshift/cluster-operator &&         cd /go/src/github.com/openshift/cluster-operator" shape="box"];
  "sha256:b7dde2bf5490909aabad360726a49b954e59ae09857197ff3f403d1d7eb7e21c" [label="mkdir{path=/go/src/github.com/openshift/cluster-operator}" shape="note"];
  "sha256:8edeb740b686cab772da444b851d4745531196a1e573294dd6254635e1cc6dbc" [label="local://context" shape="ellipse"];
  "sha256:45807f66f89c928922f36d02bc2bfcb33df04ae0a3e2e35609683cb885b3b649" [label="copy{src=/, dest=/go/src/github.com/openshift/cluster-operator/}" shape="note"];
  "sha256:6c020f7680d35137a9e0ed77d88d60ed78057da6c8ab891cdbe9469f25614b8a" [label="/bin/sh -c chmod -R og+w /go" shape="box"];
  "sha256:185acd0d3a0759dea6c0fe2c25d578d7cac14f37b884f3202cb6897fbfb1a9ce" [label="sha256:185acd0d3a0759dea6c0fe2c25d578d7cac14f37b884f3202cb6897fbfb1a9ce" shape="plaintext"];
  "sha256:b978fae666e891f0169f24dbe642e5343b767e3dfae141508f704882b62cc43d" -> "sha256:3cfb63b75639a596f3b0df555c956d6803d94e6f1aa3524c48c23735f2c2b038" [label=""];
  "sha256:3cfb63b75639a596f3b0df555c956d6803d94e6f1aa3524c48c23735f2c2b038" -> "sha256:b7dde2bf5490909aabad360726a49b954e59ae09857197ff3f403d1d7eb7e21c" [label=""];
  "sha256:b7dde2bf5490909aabad360726a49b954e59ae09857197ff3f403d1d7eb7e21c" -> "sha256:45807f66f89c928922f36d02bc2bfcb33df04ae0a3e2e35609683cb885b3b649" [label=""];
  "sha256:8edeb740b686cab772da444b851d4745531196a1e573294dd6254635e1cc6dbc" -> "sha256:45807f66f89c928922f36d02bc2bfcb33df04ae0a3e2e35609683cb885b3b649" [label=""];
  "sha256:45807f66f89c928922f36d02bc2bfcb33df04ae0a3e2e35609683cb885b3b649" -> "sha256:6c020f7680d35137a9e0ed77d88d60ed78057da6c8ab891cdbe9469f25614b8a" [label=""];
  "sha256:6c020f7680d35137a9e0ed77d88d60ed78057da6c8ab891cdbe9469f25614b8a" -> "sha256:185acd0d3a0759dea6c0fe2c25d578d7cac14f37b884f3202cb6897fbfb1a9ce" [label=""];
}


[app/sources/238348366.Dockerfile]
digraph {
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:f280ba3f96b45c560976f20715ef9a465fcb66c5f4ab1a411225d8b8a5fee867" [label="local://context" shape="ellipse"];
  "sha256:bd3611a0e58c2ed02cfc471775963f7b07449efdbb53defa961183d5d08f1af7" [label="copy{src=/, dest=/go/src/github.com/coreos/clair/}" shape="note"];
  "sha256:0e755c6eb92cde9b5966fdc581ae70683643ed495ead49a1d94d6187c103d817" [label="mkdir{path=/go/src/github.com/coreos/clair}" shape="note"];
  "sha256:246943ae8539d18f03cbc6db410115b22cbcd6cb8880bf4e3c2ece4d3bfdf76c" [label="/bin/sh -c apk add --no-cache git rpm xz &&     go install -v github.com/coreos/clair/cmd/clair &&     mv /go/bin/clair /clair &&     rm -rf /go /usr/local/go" shape="box"];
  "sha256:5611796a4ca85b78a3b0b05828f194836813ac933ee09f70630a6f337a565eb7" [label="sha256:5611796a4ca85b78a3b0b05828f194836813ac933ee09f70630a6f337a565eb7" shape="plaintext"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:bd3611a0e58c2ed02cfc471775963f7b07449efdbb53defa961183d5d08f1af7" [label=""];
  "sha256:f280ba3f96b45c560976f20715ef9a465fcb66c5f4ab1a411225d8b8a5fee867" -> "sha256:bd3611a0e58c2ed02cfc471775963f7b07449efdbb53defa961183d5d08f1af7" [label=""];
  "sha256:bd3611a0e58c2ed02cfc471775963f7b07449efdbb53defa961183d5d08f1af7" -> "sha256:0e755c6eb92cde9b5966fdc581ae70683643ed495ead49a1d94d6187c103d817" [label=""];
  "sha256:0e755c6eb92cde9b5966fdc581ae70683643ed495ead49a1d94d6187c103d817" -> "sha256:246943ae8539d18f03cbc6db410115b22cbcd6cb8880bf4e3c2ece4d3bfdf76c" [label=""];
  "sha256:246943ae8539d18f03cbc6db410115b22cbcd6cb8880bf4e3c2ece4d3bfdf76c" -> "sha256:5611796a4ca85b78a3b0b05828f194836813ac933ee09f70630a6f337a565eb7" [label=""];
}


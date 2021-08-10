[app/sources/174554021.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:893388277c1835f4eb0f373b168a0ea5c9751390c34e5dd9a5859a069535ff9b" [label="local://context" shape="ellipse"];
  "sha256:bd5ff3ec676a790c9efd9ec08515f8c167f73d18610851beebbbd268e361f749" [label="copy{src=/, dest=/go/src/github.com/abhiyerra/sarpa}" shape="note"];
  "sha256:1cd717075ec0ec180122f3333ca6e5b50a44e06d97bb0c60e90c57a0a0611056" [label="/bin/sh -c cd /go/src/github.com/abhiyerra/sarpa && go get ./..." shape="box"];
  "sha256:07f5213605688951a2bdb5682a42388581eb162d20665e29dc148594273465ee" [label="/bin/sh -c go install github.com/abhiyerra/sarpa" shape="box"];
  "sha256:0d005d9b3f83d8e292ba6f0b7d9a1f1a020a89239d64773bf60e9e70fb024a5e" [label="mkdir{path=/go/src/github.com/abhiyerra/sarpa}" shape="note"];
  "sha256:0da290e181a56c714d9df8ca98adc36b7c4ab34e5d5ab45181e4c28f557414bb" [label="sha256:0da290e181a56c714d9df8ca98adc36b7c4ab34e5d5ab45181e4c28f557414bb" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:bd5ff3ec676a790c9efd9ec08515f8c167f73d18610851beebbbd268e361f749" [label=""];
  "sha256:893388277c1835f4eb0f373b168a0ea5c9751390c34e5dd9a5859a069535ff9b" -> "sha256:bd5ff3ec676a790c9efd9ec08515f8c167f73d18610851beebbbd268e361f749" [label=""];
  "sha256:bd5ff3ec676a790c9efd9ec08515f8c167f73d18610851beebbbd268e361f749" -> "sha256:1cd717075ec0ec180122f3333ca6e5b50a44e06d97bb0c60e90c57a0a0611056" [label=""];
  "sha256:1cd717075ec0ec180122f3333ca6e5b50a44e06d97bb0c60e90c57a0a0611056" -> "sha256:07f5213605688951a2bdb5682a42388581eb162d20665e29dc148594273465ee" [label=""];
  "sha256:07f5213605688951a2bdb5682a42388581eb162d20665e29dc148594273465ee" -> "sha256:0d005d9b3f83d8e292ba6f0b7d9a1f1a020a89239d64773bf60e9e70fb024a5e" [label=""];
  "sha256:0d005d9b3f83d8e292ba6f0b7d9a1f1a020a89239d64773bf60e9e70fb024a5e" -> "sha256:0da290e181a56c714d9df8ca98adc36b7c4ab34e5d5ab45181e4c28f557414bb" [label=""];
}


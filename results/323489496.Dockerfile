[app/sources/323489496.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:7f8e038eb899d5f56da9618d6007648e821045578b7d7bda67405b866b9fdfda" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:5ea6536592a39ae0f839ee333b066d7f8c61eacc66abd4c8598cc8e86410c5d4" [label="/bin/sh -c apk add --no-cache curl" shape="box"];
  "sha256:5c1cd51b01a99511cbb413760d267ad8896f3fc7e04c7e6553679d765733cdd3" [label="local://context" shape="ellipse"];
  "sha256:2d45d8fb231e3a497024ad2953501604dd219786e6dc68f56b0e62fc5c0e2a28" [label="copy{src=/binding-usage-controller, dest=/root/binding-usage-controller}" shape="note"];
  "sha256:ec745485da884e5f5a7dab834286af492568e6c8840a45d14d8b388b5f1bab0b" [label="sha256:ec745485da884e5f5a7dab834286af492568e6c8840a45d14d8b388b5f1bab0b" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:7f8e038eb899d5f56da9618d6007648e821045578b7d7bda67405b866b9fdfda" [label=""];
  "sha256:7f8e038eb899d5f56da9618d6007648e821045578b7d7bda67405b866b9fdfda" -> "sha256:5ea6536592a39ae0f839ee333b066d7f8c61eacc66abd4c8598cc8e86410c5d4" [label=""];
  "sha256:5ea6536592a39ae0f839ee333b066d7f8c61eacc66abd4c8598cc8e86410c5d4" -> "sha256:2d45d8fb231e3a497024ad2953501604dd219786e6dc68f56b0e62fc5c0e2a28" [label=""];
  "sha256:5c1cd51b01a99511cbb413760d267ad8896f3fc7e04c7e6553679d765733cdd3" -> "sha256:2d45d8fb231e3a497024ad2953501604dd219786e6dc68f56b0e62fc5c0e2a28" [label=""];
  "sha256:2d45d8fb231e3a497024ad2953501604dd219786e6dc68f56b0e62fc5c0e2a28" -> "sha256:ec745485da884e5f5a7dab834286af492568e6c8840a45d14d8b388b5f1bab0b" [label=""];
}


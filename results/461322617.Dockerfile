[app/sources/461322617.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:3ddbca5683ace78fa45c201cc6360f56089cbcbebed8d2b20fb06cc1c363a691" [label="local://context" shape="ellipse"];
  "sha256:e55884852337ca2528a37443723faf77982172d6fe218a4213d4c83a6fceb1dd" [label="copy{src=/simpleExec, dest=/}" shape="note"];
  "sha256:92858d79f634058518564bd529a9e631d31b3382a156e4e1c822a7817f5c59cc" [label="sha256:92858d79f634058518564bd529a9e631d31b3382a156e4e1c822a7817f5c59cc" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:e55884852337ca2528a37443723faf77982172d6fe218a4213d4c83a6fceb1dd" [label=""];
  "sha256:3ddbca5683ace78fa45c201cc6360f56089cbcbebed8d2b20fb06cc1c363a691" -> "sha256:e55884852337ca2528a37443723faf77982172d6fe218a4213d4c83a6fceb1dd" [label=""];
  "sha256:e55884852337ca2528a37443723faf77982172d6fe218a4213d4c83a6fceb1dd" -> "sha256:92858d79f634058518564bd529a9e631d31b3382a156e4e1c822a7817f5c59cc" [label=""];
}


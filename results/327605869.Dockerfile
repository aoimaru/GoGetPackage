[app/sources/327605869.Dockerfile]
digraph {
  "sha256:ea73b06b6d65f49272093334c376127fd5188b63793148faaad888dd63229d26" [label="docker-image://docker.io/library/golang:1-alpine" shape="ellipse"];
  "sha256:1b59cd810ab43a62997e89888bcde7188a67590d34559ed9f45fe2262dabc167" [label="/bin/sh -c apk add --no-cache curl git make" shape="box"];
  "sha256:a6aa5b48ca57525b3b8a3b2f6a6a6f9d9090f257762161feca8163f413923182" [label="mkdir{path=/go/src/app}" shape="note"];
  "sha256:fd26dbd853de06aa019191eb9b90a69b61fec7456073ce6844a68a3a95a0d76e" [label="/bin/sh -c curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose" shape="box"];
  "sha256:6d1137acd845e52a5de01bcd594a815f9ccb8b600abbf18f790444f783df932b" [label="sha256:6d1137acd845e52a5de01bcd594a815f9ccb8b600abbf18f790444f783df932b" shape="plaintext"];
  "sha256:ea73b06b6d65f49272093334c376127fd5188b63793148faaad888dd63229d26" -> "sha256:1b59cd810ab43a62997e89888bcde7188a67590d34559ed9f45fe2262dabc167" [label=""];
  "sha256:1b59cd810ab43a62997e89888bcde7188a67590d34559ed9f45fe2262dabc167" -> "sha256:a6aa5b48ca57525b3b8a3b2f6a6a6f9d9090f257762161feca8163f413923182" [label=""];
  "sha256:a6aa5b48ca57525b3b8a3b2f6a6a6f9d9090f257762161feca8163f413923182" -> "sha256:fd26dbd853de06aa019191eb9b90a69b61fec7456073ce6844a68a3a95a0d76e" [label=""];
  "sha256:fd26dbd853de06aa019191eb9b90a69b61fec7456073ce6844a68a3a95a0d76e" -> "sha256:6d1137acd845e52a5de01bcd594a815f9ccb8b600abbf18f790444f783df932b" [label=""];
}


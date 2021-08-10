[app/sources/174660101.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:867d940c7ec9e11466fa19a0bac4400b159870925a0c9720c14b3b8a84fc4098" [label="/bin/sh -c set -xe     && apk add --no-cache build-base                           python                           python-dev                           py-pip     && pip install vnc2flv     && apk del --purge build-base                        python-dev                        py-pip" shape="box"];
  "sha256:832fe7896a56fde7bd5aab5ae5962ab3c4492ea967429ddeac828522f903ac71" [label="mkdir{path=/data}" shape="note"];
  "sha256:490c622a4c46a29aed6e4b7afecd92dfdb51451519ec349411074f44d0a6343c" [label="sha256:490c622a4c46a29aed6e4b7afecd92dfdb51451519ec349411074f44d0a6343c" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:867d940c7ec9e11466fa19a0bac4400b159870925a0c9720c14b3b8a84fc4098" [label=""];
  "sha256:867d940c7ec9e11466fa19a0bac4400b159870925a0c9720c14b3b8a84fc4098" -> "sha256:832fe7896a56fde7bd5aab5ae5962ab3c4492ea967429ddeac828522f903ac71" [label=""];
  "sha256:832fe7896a56fde7bd5aab5ae5962ab3c4492ea967429ddeac828522f903ac71" -> "sha256:490c622a4c46a29aed6e4b7afecd92dfdb51451519ec349411074f44d0a6343c" [label=""];
}


[app/sources/235660986.Dockerfile]
digraph {
  "sha256:8a1c41070bd4ee788f6c268239d080b8d89d7b84f1709772768acdf6a7889850" [label="local://context" shape="ellipse"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:d83e584503e23c7bb89842f111321feff2d1a0bf7452166770de74ae843eb94f" [label="/bin/sh -c apk update upgrade --no-cache && apk add bash curl wget unzip tar bzip2 && rm -rf /var/cache/apk*" shape="box"];
  "sha256:af0c10ab575733c330841895ba5a3a8448a01e1f8821b3c9373ac2060ad6f82b" [label="copy{src=/download.sh, dest=/root}" shape="note"];
  "sha256:585d8cc26365b846a6df7e5d0974cfdd0158f0fd8996538f2b5b3d1b65c1ee71" [label="sha256:585d8cc26365b846a6df7e5d0974cfdd0158f0fd8996538f2b5b3d1b65c1ee71" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:d83e584503e23c7bb89842f111321feff2d1a0bf7452166770de74ae843eb94f" [label=""];
  "sha256:d83e584503e23c7bb89842f111321feff2d1a0bf7452166770de74ae843eb94f" -> "sha256:af0c10ab575733c330841895ba5a3a8448a01e1f8821b3c9373ac2060ad6f82b" [label=""];
  "sha256:8a1c41070bd4ee788f6c268239d080b8d89d7b84f1709772768acdf6a7889850" -> "sha256:af0c10ab575733c330841895ba5a3a8448a01e1f8821b3c9373ac2060ad6f82b" [label=""];
  "sha256:af0c10ab575733c330841895ba5a3a8448a01e1f8821b3c9373ac2060ad6f82b" -> "sha256:585d8cc26365b846a6df7e5d0974cfdd0158f0fd8996538f2b5b3d1b65c1ee71" [label=""];
}


[app/sources/276991069.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:18bb82bc311634adf501ad16ec13a07061f513cb8ce97310b0c20d15009c8ff6" [label="/bin/sh -c apt-get update ;apt-get dist-upgrade -y ;apt-get install -qy wget" shape="box"];
  "sha256:af2f2679655b7dbe3088f2114c2fe7a7661b3c43df3b6a541502eeecb5b9df02" [label="/bin/sh -c mkdir -p ~/tmp ;wget -qO- ${IPFS_DIST_URL} | tar xz -C ~/tmp/ ;mv ~/tmp/go-ipfs/ipfs /usr/local/bin/ ; rm -rf ~/tmp/*" shape="box"];
  "sha256:29c83a68c299a84f4f16ef065d96986e106a9bd3b25cace7ebbbb898c301af10" [label="/bin/sh -c wget -qO- ${CADDY_DIST_URL} | tar xz -C ~/tmp/ ;mv ~/tmp/caddy /usr/local/bin/ ; rm -rf ~/tmp/*" shape="box"];
  "sha256:20ad7943b8ee2a1b18f780a8fb9bc2aa03af22a98cba6adac5862a66950a8e1c" [label="/bin/sh -c ipfs --version ; caddy --version" shape="box"];
  "sha256:32c2704c7730a33875c039cebf183dfb49af16b66e035690075c7bef45fc784c" [label="local://context" shape="ellipse"];
  "sha256:0f839c30b0df1f91e997e87c6583457386a2eb69bb217459e9542b04a63efab4" [label="copy{src=/start, dest=/}" shape="note"];
  "sha256:6e06c1d5666ebe00a1152fb2fbdb4c0c4780482162a976e889eb9a290132850e" [label="sha256:6e06c1d5666ebe00a1152fb2fbdb4c0c4780482162a976e889eb9a290132850e" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:18bb82bc311634adf501ad16ec13a07061f513cb8ce97310b0c20d15009c8ff6" [label=""];
  "sha256:18bb82bc311634adf501ad16ec13a07061f513cb8ce97310b0c20d15009c8ff6" -> "sha256:af2f2679655b7dbe3088f2114c2fe7a7661b3c43df3b6a541502eeecb5b9df02" [label=""];
  "sha256:af2f2679655b7dbe3088f2114c2fe7a7661b3c43df3b6a541502eeecb5b9df02" -> "sha256:29c83a68c299a84f4f16ef065d96986e106a9bd3b25cace7ebbbb898c301af10" [label=""];
  "sha256:29c83a68c299a84f4f16ef065d96986e106a9bd3b25cace7ebbbb898c301af10" -> "sha256:20ad7943b8ee2a1b18f780a8fb9bc2aa03af22a98cba6adac5862a66950a8e1c" [label=""];
  "sha256:20ad7943b8ee2a1b18f780a8fb9bc2aa03af22a98cba6adac5862a66950a8e1c" -> "sha256:0f839c30b0df1f91e997e87c6583457386a2eb69bb217459e9542b04a63efab4" [label=""];
  "sha256:32c2704c7730a33875c039cebf183dfb49af16b66e035690075c7bef45fc784c" -> "sha256:0f839c30b0df1f91e997e87c6583457386a2eb69bb217459e9542b04a63efab4" [label=""];
  "sha256:0f839c30b0df1f91e997e87c6583457386a2eb69bb217459e9542b04a63efab4" -> "sha256:6e06c1d5666ebe00a1152fb2fbdb4c0c4780482162a976e889eb9a290132850e" [label=""];
}


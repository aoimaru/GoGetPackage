[app/sources/230465704.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:b2a5aa4f88225636c70bc2dcb6196b8a61396657cea79ea975e0ffe4dd4e5d7b" [label="mkdir{path=/go/src/github.com/dustinblackman/streamroller}" shape="note"];
  "sha256:402d53535c1e93d1d014401cf391618eb99d8b961553a4f5a219118a44bd7ab4" [label="local://context" shape="ellipse"];
  "sha256:f8ab3a58f2a7175178ae5f58097a74b1bcb0f3002658ed4c8040a8856c0ad388" [label="copy{src=/, dest=/go/src/github.com/dustinblackman/streamroller/}" shape="note"];
  "sha256:363d5e30c6d326f6dbc29d044e376de6b89d3b11279c34af6016ff4e7b2866e7" [label="/bin/sh -c echo \"http://dl-cdn.alpinelinux.org/alpine/edge/community\" | tee -a /etc/apk/repositories &&     apk add -U git build-base go=1.7.3-r0 &&     make deps &&     make build &&     mkdir -p /app &&     mv ./streamroller /app/ &&     cd /app &&     apk del git build-base go &&     rm -rf /usr/share/man /tmp/* /var/tmp/* /var/cache/apk/* \"$GOPATH\"" shape="box"];
  "sha256:c209fab94fb65096de99b7ee2683bce42267b4b0b8a61536daf173a5b35f98cb" [label="mkdir{path=/app}" shape="note"];
  "sha256:6366d1a6b1af0291e7c55c13940e790fdf17952ef1f57d39f59d1dc90b6644a9" [label="sha256:6366d1a6b1af0291e7c55c13940e790fdf17952ef1f57d39f59d1dc90b6644a9" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:b2a5aa4f88225636c70bc2dcb6196b8a61396657cea79ea975e0ffe4dd4e5d7b" [label=""];
  "sha256:b2a5aa4f88225636c70bc2dcb6196b8a61396657cea79ea975e0ffe4dd4e5d7b" -> "sha256:f8ab3a58f2a7175178ae5f58097a74b1bcb0f3002658ed4c8040a8856c0ad388" [label=""];
  "sha256:402d53535c1e93d1d014401cf391618eb99d8b961553a4f5a219118a44bd7ab4" -> "sha256:f8ab3a58f2a7175178ae5f58097a74b1bcb0f3002658ed4c8040a8856c0ad388" [label=""];
  "sha256:f8ab3a58f2a7175178ae5f58097a74b1bcb0f3002658ed4c8040a8856c0ad388" -> "sha256:363d5e30c6d326f6dbc29d044e376de6b89d3b11279c34af6016ff4e7b2866e7" [label=""];
  "sha256:363d5e30c6d326f6dbc29d044e376de6b89d3b11279c34af6016ff4e7b2866e7" -> "sha256:c209fab94fb65096de99b7ee2683bce42267b4b0b8a61536daf173a5b35f98cb" [label=""];
  "sha256:c209fab94fb65096de99b7ee2683bce42267b4b0b8a61536daf173a5b35f98cb" -> "sha256:6366d1a6b1af0291e7c55c13940e790fdf17952ef1f57d39f59d1dc90b6644a9" [label=""];
}


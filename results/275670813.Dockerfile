[app/sources/275670813.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:eea51ba3e2cf8f8c47664c01f32bc1c247365f2d4f4b6e0df2e46199c8e36c2b" [label="/bin/sh -c sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list" shape="box"];
  "sha256:ba0932121eac4a5d44462ad4c1605ce7f68f0eef6eee571448dec2a3aed027fb" [label="/bin/sh -c set -x     && apt-get update" shape="box"];
  "sha256:959c6b7285c50272a79339f640af0fa195530bd04ff6b03c4377467fe84cd53f" [label="/bin/sh -c apt-get install -y openssh-server redis-server" shape="box"];
  "sha256:4e30d5a653f225f01f7b80b8d43f1665fcdac0b9b5e77d27eaa291273cf6f574" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server" shape="box"];
  "sha256:63a116347a7686a4e75bf4e40a511a3acb8cba5f1d6dcf0a84a18b0d4835e068" [label="sha256:63a116347a7686a4e75bf4e40a511a3acb8cba5f1d6dcf0a84a18b0d4835e068" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:eea51ba3e2cf8f8c47664c01f32bc1c247365f2d4f4b6e0df2e46199c8e36c2b" [label=""];
  "sha256:eea51ba3e2cf8f8c47664c01f32bc1c247365f2d4f4b6e0df2e46199c8e36c2b" -> "sha256:ba0932121eac4a5d44462ad4c1605ce7f68f0eef6eee571448dec2a3aed027fb" [label=""];
  "sha256:ba0932121eac4a5d44462ad4c1605ce7f68f0eef6eee571448dec2a3aed027fb" -> "sha256:959c6b7285c50272a79339f640af0fa195530bd04ff6b03c4377467fe84cd53f" [label=""];
  "sha256:959c6b7285c50272a79339f640af0fa195530bd04ff6b03c4377467fe84cd53f" -> "sha256:4e30d5a653f225f01f7b80b8d43f1665fcdac0b9b5e77d27eaa291273cf6f574" [label=""];
  "sha256:4e30d5a653f225f01f7b80b8d43f1665fcdac0b9b5e77d27eaa291273cf6f574" -> "sha256:63a116347a7686a4e75bf4e40a511a3acb8cba5f1d6dcf0a84a18b0d4835e068" [label=""];
}


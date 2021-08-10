[app/sources/363519301.Dockerfile]
digraph {
  "sha256:45ef94b0625e2256426b394af7de0b6705ab9107e114d83dd2269ad82419dce2" [label="docker-image://docker.io/library/alpine:latest@sha256:eb3e4e175ba6d212ba1d6e04fc0782916c08e1c9d7b45892e9796141b1d379ae" shape="ellipse"];
  "sha256:e0582913f2dc7435ecd0dd4790c505f67faa7d678c65dd56c4a4f27f2dd42d17" [label="/bin/sh -c apk add --no-cache         ca-certificates         openssl         curl         bash         sed         wget         zip         unzip         bzip2         p7zip         drill         ldns         openssh-client         rsync         git         gnupg     && wget -O \"/usr/local/bin/go-replace\" \"https://github.com/webdevops/goreplace/releases/download/1.1.2/gr-64-linux\"     && chmod +x \"/usr/local/bin/go-replace\"     && \"/usr/local/bin/go-replace\" --version" shape="box"];
  "sha256:e4de298211b0ff21514ea6ededa08fe07f030396e46eee25dba9ef42d5364ab1" [label="sha256:e4de298211b0ff21514ea6ededa08fe07f030396e46eee25dba9ef42d5364ab1" shape="plaintext"];
  "sha256:45ef94b0625e2256426b394af7de0b6705ab9107e114d83dd2269ad82419dce2" -> "sha256:e0582913f2dc7435ecd0dd4790c505f67faa7d678c65dd56c4a4f27f2dd42d17" [label=""];
  "sha256:e0582913f2dc7435ecd0dd4790c505f67faa7d678c65dd56c4a4f27f2dd42d17" -> "sha256:e4de298211b0ff21514ea6ededa08fe07f030396e46eee25dba9ef42d5364ab1" [label=""];
}


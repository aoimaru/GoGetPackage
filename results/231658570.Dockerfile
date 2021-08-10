[app/sources/231658570.Dockerfile]
digraph {
  "sha256:4eed242846f4462ad94a6a07f168e9d5215e8f573e99914c250a9a96bac8152a" [label="docker-image://docker.io/foxiswho/php:php71-fpm" shape="ellipse"];
  "sha256:7d684ed2a055357290eedd253b7c5ab6173b4344bc8e1e7005fae4d10cb9a29b" [label="/bin/sh -c /root/start.sh" shape="box"];
  "sha256:8c58860176a6536e60cc421d1e277ee52d0c68aca7a9c428e757d01e782c4351" [label="sha256:8c58860176a6536e60cc421d1e277ee52d0c68aca7a9c428e757d01e782c4351" shape="plaintext"];
  "sha256:4eed242846f4462ad94a6a07f168e9d5215e8f573e99914c250a9a96bac8152a" -> "sha256:7d684ed2a055357290eedd253b7c5ab6173b4344bc8e1e7005fae4d10cb9a29b" [label=""];
  "sha256:7d684ed2a055357290eedd253b7c5ab6173b4344bc8e1e7005fae4d10cb9a29b" -> "sha256:8c58860176a6536e60cc421d1e277ee52d0c68aca7a9c428e757d01e782c4351" [label=""];
}


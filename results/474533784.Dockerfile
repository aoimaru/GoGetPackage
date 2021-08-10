[app/sources/474533784.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:be14eba56ce862c557d06a5cf01f07da0e580d854527ab6c90ba617c78b37472" [label="/bin/sh -c apk --no-cache upgrade && apk --no-cache add ca-certificates" shape="box"];
  "sha256:78c71f1663446c9fbf9832b766d32884972b4fa4212579615951b585eaaff87d" [label="local://context" shape="ellipse"];
  "sha256:45eac4c22743f6b2c8fc7756ff1120e0b8fcc395b6960a6f18e819be28346577" [label="copy{src=/centrifugo, dest=/usr/local/bin/centrifugo}" shape="note"];
  "sha256:ba5b8c42d071bdd27c03961707e0a29c397289c6480eab78e09ae5ea80ceb829" [label="mkdir{path=/centrifugo}" shape="note"];
  "sha256:83248a8586da68e0e4ff3156970cabbaf9f19e5d02c7856b11a9c22fadab054a" [label="sha256:83248a8586da68e0e4ff3156970cabbaf9f19e5d02c7856b11a9c22fadab054a" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:be14eba56ce862c557d06a5cf01f07da0e580d854527ab6c90ba617c78b37472" [label=""];
  "sha256:be14eba56ce862c557d06a5cf01f07da0e580d854527ab6c90ba617c78b37472" -> "sha256:45eac4c22743f6b2c8fc7756ff1120e0b8fcc395b6960a6f18e819be28346577" [label=""];
  "sha256:78c71f1663446c9fbf9832b766d32884972b4fa4212579615951b585eaaff87d" -> "sha256:45eac4c22743f6b2c8fc7756ff1120e0b8fcc395b6960a6f18e819be28346577" [label=""];
  "sha256:45eac4c22743f6b2c8fc7756ff1120e0b8fcc395b6960a6f18e819be28346577" -> "sha256:ba5b8c42d071bdd27c03961707e0a29c397289c6480eab78e09ae5ea80ceb829" [label=""];
  "sha256:ba5b8c42d071bdd27c03961707e0a29c397289c6480eab78e09ae5ea80ceb829" -> "sha256:83248a8586da68e0e4ff3156970cabbaf9f19e5d02c7856b11a9c22fadab054a" [label=""];
}


[app/sources/420060592.Dockerfile]
digraph {
  "sha256:078d5f5ef19c4bfb15db02484e3a6690ce94d9af7d23555c4f92bb78b84c203c" [label="local://context" shape="ellipse"];
  "sha256:4a385720f534cdb2b070c0564fec973054520dd74a6b8959eb6ec405ef0bcd29" [label="docker-image://docker.io/library/ruby:2.5.1-slim" shape="ellipse"];
  "sha256:596f490f26dec8e30f7d119b6d87bc8c9128459d140b1a98ff9dd1838147938f" [label="/bin/sh -c apt-get update &&     apt-get install -y build-essential nodejs libpq-dev postgresql-client imagemagick" shape="box"];
  "sha256:24debb5aa834cf03c3c24f0a4bb977ae38632512141e98726689a37d67493acb" [label="mkdir{path=/var/www/app}" shape="note"];
  "sha256:05c4a02fbe05900f8788a20aabce3ffde6ac8c68647ed53b6d09c219d96dea68" [label="copy{src=/Gemfile*, dest=/var/www/app/}" shape="note"];
  "sha256:b1d2468e9a69f3ff63bc9b6940f2be24e9f54c935d38e24c36f7991dfd4dceff" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:913337ec26ea0bb7a285537712387552be156f7ce2d0ff532062ae27e1b93fae" [label="copy{src=/, dest=/var/www/app/}" shape="note"];
  "sha256:7c3c6a1cd2687ab37c3e78819ca3b943177dd98a0c233b00da7c041027815512" [label="sha256:7c3c6a1cd2687ab37c3e78819ca3b943177dd98a0c233b00da7c041027815512" shape="plaintext"];
  "sha256:4a385720f534cdb2b070c0564fec973054520dd74a6b8959eb6ec405ef0bcd29" -> "sha256:596f490f26dec8e30f7d119b6d87bc8c9128459d140b1a98ff9dd1838147938f" [label=""];
  "sha256:596f490f26dec8e30f7d119b6d87bc8c9128459d140b1a98ff9dd1838147938f" -> "sha256:24debb5aa834cf03c3c24f0a4bb977ae38632512141e98726689a37d67493acb" [label=""];
  "sha256:24debb5aa834cf03c3c24f0a4bb977ae38632512141e98726689a37d67493acb" -> "sha256:05c4a02fbe05900f8788a20aabce3ffde6ac8c68647ed53b6d09c219d96dea68" [label=""];
  "sha256:078d5f5ef19c4bfb15db02484e3a6690ce94d9af7d23555c4f92bb78b84c203c" -> "sha256:05c4a02fbe05900f8788a20aabce3ffde6ac8c68647ed53b6d09c219d96dea68" [label=""];
  "sha256:05c4a02fbe05900f8788a20aabce3ffde6ac8c68647ed53b6d09c219d96dea68" -> "sha256:b1d2468e9a69f3ff63bc9b6940f2be24e9f54c935d38e24c36f7991dfd4dceff" [label=""];
  "sha256:b1d2468e9a69f3ff63bc9b6940f2be24e9f54c935d38e24c36f7991dfd4dceff" -> "sha256:913337ec26ea0bb7a285537712387552be156f7ce2d0ff532062ae27e1b93fae" [label=""];
  "sha256:078d5f5ef19c4bfb15db02484e3a6690ce94d9af7d23555c4f92bb78b84c203c" -> "sha256:913337ec26ea0bb7a285537712387552be156f7ce2d0ff532062ae27e1b93fae" [label=""];
  "sha256:913337ec26ea0bb7a285537712387552be156f7ce2d0ff532062ae27e1b93fae" -> "sha256:7c3c6a1cd2687ab37c3e78819ca3b943177dd98a0c233b00da7c041027815512" [label=""];
}


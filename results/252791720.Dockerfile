[app/sources/252791720.Dockerfile]
digraph {
  "sha256:413eae6d0e5d073d910625229b06de40cfe1afaa5b25e6547ccf266323e18431" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:98adc274f2b93bbf4c39815a382fb419a901bacfb5b3aa48c57d1ec350b0dd05" [label="/bin/sh -c apk add --no-cache bzip2 gzip openssh-client perl unzip xz" shape="box"];
  "sha256:5ad0de586303101431ce96559f0df6499248563458bad740ae3bb43283ff9229" [label="copy{src=/pgbadger, dest=/usr/local/bin}" shape="note"];
  "sha256:1cd4b2e52cdd8c15323ad98ec031e99a1b75bb8593691abeae370b929a44c3a8" [label="sha256:1cd4b2e52cdd8c15323ad98ec031e99a1b75bb8593691abeae370b929a44c3a8" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:98adc274f2b93bbf4c39815a382fb419a901bacfb5b3aa48c57d1ec350b0dd05" [label=""];
  "sha256:98adc274f2b93bbf4c39815a382fb419a901bacfb5b3aa48c57d1ec350b0dd05" -> "sha256:5ad0de586303101431ce96559f0df6499248563458bad740ae3bb43283ff9229" [label=""];
  "sha256:413eae6d0e5d073d910625229b06de40cfe1afaa5b25e6547ccf266323e18431" -> "sha256:5ad0de586303101431ce96559f0df6499248563458bad740ae3bb43283ff9229" [label=""];
  "sha256:5ad0de586303101431ce96559f0df6499248563458bad740ae3bb43283ff9229" -> "sha256:1cd4b2e52cdd8c15323ad98ec031e99a1b75bb8593691abeae370b929a44c3a8" [label=""];
}


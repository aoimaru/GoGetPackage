[app/sources/291966122.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" [label="mkdir{path=/root}" shape="note"];
  "sha256:3ed6a1cbf6833c7c99ca001dc1ed1ca8cffffadc7353d0b071342d5b2f9bdb98" [label="local://context" shape="ellipse"];
  "sha256:21a310d36e8bf9169f1d3d0c2bed848a405829255e8fe25d5d10b9d7f9adcb24" [label="copy{src=/, dest=/go/src/golang.org/x/tools/cmd/getgo}" shape="note"];
  "sha256:81b28ad8c2c05aeff3d25fb966f3410c1238c017d2aa926627a947cdb474c279" [label="/bin/sh -c ( \t\tcd /go/src/golang.org/x/tools/cmd/getgo \t\t&& go build \t\t&& mv getgo /usr/local/bin/getgo \t)" shape="box"];
  "sha256:8b82f4e1898a3d8f34ae4ef11decdd7689f5e2003a788a45504005852ad39a4f" [label="/bin/sh -c rm -rf /go /usr/local/go" shape="box"];
  "sha256:fe5aabda8b7200e276effd232a0eaf4ce6d5452e5753d7324b8d1f54800e4c87" [label="sha256:fe5aabda8b7200e276effd232a0eaf4ce6d5452e5753d7324b8d1f54800e4c87" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" [label=""];
  "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" -> "sha256:21a310d36e8bf9169f1d3d0c2bed848a405829255e8fe25d5d10b9d7f9adcb24" [label=""];
  "sha256:3ed6a1cbf6833c7c99ca001dc1ed1ca8cffffadc7353d0b071342d5b2f9bdb98" -> "sha256:21a310d36e8bf9169f1d3d0c2bed848a405829255e8fe25d5d10b9d7f9adcb24" [label=""];
  "sha256:21a310d36e8bf9169f1d3d0c2bed848a405829255e8fe25d5d10b9d7f9adcb24" -> "sha256:81b28ad8c2c05aeff3d25fb966f3410c1238c017d2aa926627a947cdb474c279" [label=""];
  "sha256:81b28ad8c2c05aeff3d25fb966f3410c1238c017d2aa926627a947cdb474c279" -> "sha256:8b82f4e1898a3d8f34ae4ef11decdd7689f5e2003a788a45504005852ad39a4f" [label=""];
  "sha256:8b82f4e1898a3d8f34ae4ef11decdd7689f5e2003a788a45504005852ad39a4f" -> "sha256:fe5aabda8b7200e276effd232a0eaf4ce6d5452e5753d7324b8d1f54800e4c87" [label=""];
}


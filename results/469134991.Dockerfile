[app/sources/469134991.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" [label="mkdir{path=/root}" shape="note"];
  "sha256:43732d6d39c300ff85152bf7de67db94a637017b23598085b3cea7747e04cb9e" [label="local://context" shape="ellipse"];
  "sha256:53352af49390ef07c759797173cbcf713c989c7816ac62b56a067d56e04289fb" [label="copy{src=/, dest=/go/src/golang.org/x/tools/cmd/getgo}" shape="note"];
  "sha256:ef989e76fca4850ee8cd37f60bd2d071dffa63ff10c41424b6d1629549285595" [label="/bin/sh -c ( \t\tcd /go/src/golang.org/x/tools/cmd/getgo \t\t&& go build \t\t&& mv getgo /usr/local/bin/getgo \t)" shape="box"];
  "sha256:93ed4472568e367b6f8469f6e371e43cf8f052399231f19aa0d9199ff56eada6" [label="/bin/sh -c rm -rf /go /usr/local/go" shape="box"];
  "sha256:41f0a0c7c900ee8d3736343d4aa0377f237c7342e06fd6d855b502acfdd1b1db" [label="sha256:41f0a0c7c900ee8d3736343d4aa0377f237c7342e06fd6d855b502acfdd1b1db" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" [label=""];
  "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" -> "sha256:53352af49390ef07c759797173cbcf713c989c7816ac62b56a067d56e04289fb" [label=""];
  "sha256:43732d6d39c300ff85152bf7de67db94a637017b23598085b3cea7747e04cb9e" -> "sha256:53352af49390ef07c759797173cbcf713c989c7816ac62b56a067d56e04289fb" [label=""];
  "sha256:53352af49390ef07c759797173cbcf713c989c7816ac62b56a067d56e04289fb" -> "sha256:ef989e76fca4850ee8cd37f60bd2d071dffa63ff10c41424b6d1629549285595" [label=""];
  "sha256:ef989e76fca4850ee8cd37f60bd2d071dffa63ff10c41424b6d1629549285595" -> "sha256:93ed4472568e367b6f8469f6e371e43cf8f052399231f19aa0d9199ff56eada6" [label=""];
  "sha256:93ed4472568e367b6f8469f6e371e43cf8f052399231f19aa0d9199ff56eada6" -> "sha256:41f0a0c7c900ee8d3736343d4aa0377f237c7342e06fd6d855b502acfdd1b1db" [label=""];
}


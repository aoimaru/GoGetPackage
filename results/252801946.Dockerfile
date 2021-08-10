[app/sources/252801946.Dockerfile]
digraph {
  "sha256:8e91f765e39e4a165b6bb03a5e1872df3cf60b19c9397c70af426fec862a1969" [label="docker-image://docker.io/library/openjdk:alpine" shape="ellipse"];
  "sha256:9db87ad9d03aadd66daefc64875fb75a2a67ffc13e1dc64c5112ce350e4910c5" [label="/bin/sh -c apk update && apk add acf-openssl" shape="box"];
  "sha256:923ddddae6ec1ece7322798c647f6fb6affe049c2763be7c0a91b53c5e4a713a" [label="local://context" shape="ellipse"];
  "sha256:30818f1468e976a2c2f06aa317241af738b906722be8eeb5cec20ab693eff1fc" [label="copy{src=/bin, dest=/srv/minecraft/}" shape="note"];
  "sha256:155d5ba8ad2f6a53bfc182f245fba6d9bc2250c758d4b8b4fe7e9a693a4b2be7" [label="sha256:155d5ba8ad2f6a53bfc182f245fba6d9bc2250c758d4b8b4fe7e9a693a4b2be7" shape="plaintext"];
  "sha256:8e91f765e39e4a165b6bb03a5e1872df3cf60b19c9397c70af426fec862a1969" -> "sha256:9db87ad9d03aadd66daefc64875fb75a2a67ffc13e1dc64c5112ce350e4910c5" [label=""];
  "sha256:9db87ad9d03aadd66daefc64875fb75a2a67ffc13e1dc64c5112ce350e4910c5" -> "sha256:30818f1468e976a2c2f06aa317241af738b906722be8eeb5cec20ab693eff1fc" [label=""];
  "sha256:923ddddae6ec1ece7322798c647f6fb6affe049c2763be7c0a91b53c5e4a713a" -> "sha256:30818f1468e976a2c2f06aa317241af738b906722be8eeb5cec20ab693eff1fc" [label=""];
  "sha256:30818f1468e976a2c2f06aa317241af738b906722be8eeb5cec20ab693eff1fc" -> "sha256:155d5ba8ad2f6a53bfc182f245fba6d9bc2250c758d4b8b4fe7e9a693a4b2be7" [label=""];
}


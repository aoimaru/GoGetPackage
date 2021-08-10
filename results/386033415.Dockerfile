[app/sources/386033415.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:6276c798a1e2c5f55d3f1cb4e54bcf4435cd2e4783c106003534028caa995340" [label="local://context" shape="ellipse"];
  "sha256:fb09abc1738ff2a1f2e07e0b7ed14029407919e70b2baaaaa1873526d0cbaba4" [label="copy{src=/copychown.txt, dest=/tmp}" shape="note"];
  "sha256:fd8dcacb27679ee9271af92f35fc3f8e874cf79242627da22bae84295ee352cd" [label="/bin/sh -c stat -c \"user:%u group:%g\" /tmp/copychown.txt" shape="box"];
  "sha256:7fdda53b8195b58e97e68857150d213d7deb48dbc5b3b9ee1cbe121e47632b6c" [label="sha256:7fdda53b8195b58e97e68857150d213d7deb48dbc5b3b9ee1cbe121e47632b6c" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:fb09abc1738ff2a1f2e07e0b7ed14029407919e70b2baaaaa1873526d0cbaba4" [label=""];
  "sha256:6276c798a1e2c5f55d3f1cb4e54bcf4435cd2e4783c106003534028caa995340" -> "sha256:fb09abc1738ff2a1f2e07e0b7ed14029407919e70b2baaaaa1873526d0cbaba4" [label=""];
  "sha256:fb09abc1738ff2a1f2e07e0b7ed14029407919e70b2baaaaa1873526d0cbaba4" -> "sha256:fd8dcacb27679ee9271af92f35fc3f8e874cf79242627da22bae84295ee352cd" [label=""];
  "sha256:fd8dcacb27679ee9271af92f35fc3f8e874cf79242627da22bae84295ee352cd" -> "sha256:7fdda53b8195b58e97e68857150d213d7deb48dbc5b3b9ee1cbe121e47632b6c" [label=""];
}


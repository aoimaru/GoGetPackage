[app/sources/278793927.Dockerfile]
digraph {
  "sha256:56078a6ff681a55db7c9bd08ca8c408e24eed77d472a68740d0b796bec85ef5a" [label="docker-image://docker.io/library/open-liberty:19.0.0.3-kernel-java8-ibmsfj" shape="ellipse"];
  "sha256:c14daacd2dc90f9c69150c5df36725ae6641265f17bae6d6c6863dd4c774fff0" [label="/bin/sh -c cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml" shape="box"];
  "sha256:994cab7542b94b8103368a1e0fb3ac519c8e7c956e0694459814a332d69e4bf3" [label="sha256:994cab7542b94b8103368a1e0fb3ac519c8e7c956e0694459814a332d69e4bf3" shape="plaintext"];
  "sha256:56078a6ff681a55db7c9bd08ca8c408e24eed77d472a68740d0b796bec85ef5a" -> "sha256:c14daacd2dc90f9c69150c5df36725ae6641265f17bae6d6c6863dd4c774fff0" [label=""];
  "sha256:c14daacd2dc90f9c69150c5df36725ae6641265f17bae6d6c6863dd4c774fff0" -> "sha256:994cab7542b94b8103368a1e0fb3ac519c8e7c956e0694459814a332d69e4bf3" [label=""];
}


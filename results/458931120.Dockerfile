[app/sources/458931120.Dockerfile]
digraph {
  "sha256:c98ad88b1b4888e7a41b0c6a5898eb344ff21d7696fdd72d138819b5b21d133a" [label="docker-image://docker.io/anapsix/alpine-java@sha256:1d24bc352e07b84c073acfff8bf913c213d1cfc73cdf876b181d714870968819" shape="ellipse"];
  "sha256:4b9add9d94e70e44c155f97cb802eaf3ce2b8785d0d3b037ce8873987f9ec5b2" [label="local://context" shape="ellipse"];
  "sha256:56030d07698ce5b25a4ee0fc3c822e973061aea30f03d1d8899530435e364325" [label="copy{src=/target/appsensor-ws-rest-server-with-websocket-mysql-boot-0.0.1-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:0b3a5d30bd6c4e061c07bbab281cb89e5a773c6d1d05bba4e8e07692ae8f03bf" [label="/bin/sh -c bash -c 'touch /app.jar'" shape="box"];
  "sha256:3c9ca43b24d6418f4ea3219a189665a619149185e5091406274e51a59bed6034" [label="sha256:3c9ca43b24d6418f4ea3219a189665a619149185e5091406274e51a59bed6034" shape="plaintext"];
  "sha256:c98ad88b1b4888e7a41b0c6a5898eb344ff21d7696fdd72d138819b5b21d133a" -> "sha256:56030d07698ce5b25a4ee0fc3c822e973061aea30f03d1d8899530435e364325" [label=""];
  "sha256:4b9add9d94e70e44c155f97cb802eaf3ce2b8785d0d3b037ce8873987f9ec5b2" -> "sha256:56030d07698ce5b25a4ee0fc3c822e973061aea30f03d1d8899530435e364325" [label=""];
  "sha256:56030d07698ce5b25a4ee0fc3c822e973061aea30f03d1d8899530435e364325" -> "sha256:0b3a5d30bd6c4e061c07bbab281cb89e5a773c6d1d05bba4e8e07692ae8f03bf" [label=""];
  "sha256:0b3a5d30bd6c4e061c07bbab281cb89e5a773c6d1d05bba4e8e07692ae8f03bf" -> "sha256:3c9ca43b24d6418f4ea3219a189665a619149185e5091406274e51a59bed6034" [label=""];
}


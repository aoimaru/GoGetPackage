[app/sources/391260487.Dockerfile]
digraph {
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" [label="docker-image://docker.io/library/debian:sid" shape="ellipse"];
  "sha256:976790015ffac986106db3bd64b7600c867e75a35fa64cc57fe625447d6f9639" [label="/bin/sh -c apt-get update && apt-get install -y python git bc && apt-get clean" shape="box"];
  "sha256:04b10108574b3ab61d4e05f8b212c780624666418ab8e1894c0045013fe56256" [label="local://context" shape="ellipse"];
  "sha256:e32acc22539a8adfd691bcb20d914661ed84554631cc0b532ec4861a4642502c" [label="copy{src=/board-status.html, dest=/opt/tools/},copy{src=/kconfig2html, dest=/opt/tools/},copy{src=/run.sh, dest=/opt/tools/}" shape="note"];
  "sha256:28d1fafaf2d4ea572035bf200a48ed41c8d1a9e7877ae461d8d353d8decfe5cd" [label="sha256:28d1fafaf2d4ea572035bf200a48ed41c8d1a9e7877ae461d8d353d8decfe5cd" shape="plaintext"];
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" -> "sha256:976790015ffac986106db3bd64b7600c867e75a35fa64cc57fe625447d6f9639" [label=""];
  "sha256:976790015ffac986106db3bd64b7600c867e75a35fa64cc57fe625447d6f9639" -> "sha256:e32acc22539a8adfd691bcb20d914661ed84554631cc0b532ec4861a4642502c" [label=""];
  "sha256:04b10108574b3ab61d4e05f8b212c780624666418ab8e1894c0045013fe56256" -> "sha256:e32acc22539a8adfd691bcb20d914661ed84554631cc0b532ec4861a4642502c" [label=""];
  "sha256:e32acc22539a8adfd691bcb20d914661ed84554631cc0b532ec4861a4642502c" -> "sha256:28d1fafaf2d4ea572035bf200a48ed41c8d1a9e7877ae461d8d353d8decfe5cd" [label=""];
}


[app/sources/254976417.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:44b323a54f8030b6ca66a54cf4884345920c036a1c474fb11dd65c5c0364ab5a" [label="/bin/sh -c apt-get update && apt-get install -y wget" shape="box"];
  "sha256:d20b71822e97f42fd124bf2002cd35a24eb64743f3b16e6f6153ae37dc9403fb" [label="/bin/sh -c wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz     && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz     && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz" shape="box"];
  "sha256:d2ea65f75c49ecf50fecb061f1e4487c12aee462f02690fa3cf8a0d47dc64249" [label="local://context" shape="ellipse"];
  "sha256:a6177cec97b14e0b12971fb2006e16029baa040548d2c7134132e1f9a480daf4" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:a6703caabe06de4965192189cbf8694a0804e8c1d2171616301c37c6d96bb8c3" [label="mkdir{path=/etc/nginx}" shape="note"];
  "sha256:1a2879fc6ccfbc00b7a4908bd9717ab14476c422fc0bb08962b966c2e39e1f0f" [label="sha256:1a2879fc6ccfbc00b7a4908bd9717ab14476c422fc0bb08962b966c2e39e1f0f" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:44b323a54f8030b6ca66a54cf4884345920c036a1c474fb11dd65c5c0364ab5a" [label=""];
  "sha256:44b323a54f8030b6ca66a54cf4884345920c036a1c474fb11dd65c5c0364ab5a" -> "sha256:d20b71822e97f42fd124bf2002cd35a24eb64743f3b16e6f6153ae37dc9403fb" [label=""];
  "sha256:d20b71822e97f42fd124bf2002cd35a24eb64743f3b16e6f6153ae37dc9403fb" -> "sha256:a6177cec97b14e0b12971fb2006e16029baa040548d2c7134132e1f9a480daf4" [label=""];
  "sha256:d2ea65f75c49ecf50fecb061f1e4487c12aee462f02690fa3cf8a0d47dc64249" -> "sha256:a6177cec97b14e0b12971fb2006e16029baa040548d2c7134132e1f9a480daf4" [label=""];
  "sha256:a6177cec97b14e0b12971fb2006e16029baa040548d2c7134132e1f9a480daf4" -> "sha256:a6703caabe06de4965192189cbf8694a0804e8c1d2171616301c37c6d96bb8c3" [label=""];
  "sha256:a6703caabe06de4965192189cbf8694a0804e8c1d2171616301c37c6d96bb8c3" -> "sha256:1a2879fc6ccfbc00b7a4908bd9717ab14476c422fc0bb08962b966c2e39e1f0f" [label=""];
}


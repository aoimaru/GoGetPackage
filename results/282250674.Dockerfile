[app/sources/282250674.Dockerfile]
digraph {
  "sha256:0326b7178a775ac842c45349bc44c27dde93ad734dc9fe7df033a92668836dfd" [label="docker-image://docker.io/webdevops/php:centos-7-php7@sha256:455e7155ca67bee857835e3a379d293b98ea8ddbe0765f929942557dc05eaca1" shape="ellipse"];
  "sha256:dcc912abee783fbd3b69245234d86fb8f00b6d42d9dd1ea5837a6f66181976be" [label="local://context" shape="ellipse"];
  "sha256:7b9c42ab3fded1860040afae7d7f4529bb3186ecc4b93ed9ec515189e687b14c" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:aeda1a3b4d4c3d8f37ab0b3c319bd18a99b4dc08d87880de10b13ff21418c489" [label="/bin/sh -c set -x     && wget -O - \"https://packages.blackfire.io/fedora/blackfire.repo\" | tee /etc/yum.repos.d/blackfire.repo     && yum-install         graphviz         php70w-pecl-xdebug         blackfire-php         blackfire-agent         nano         vim     && docker-service enable syslog     && docker-service enable postfix     && docker-service enable ssh     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:3b307e1675b1e2b20d90fce9d3e8ab3b04e4d5147b668f09dd03e58974addf0f" [label="sha256:3b307e1675b1e2b20d90fce9d3e8ab3b04e4d5147b668f09dd03e58974addf0f" shape="plaintext"];
  "sha256:0326b7178a775ac842c45349bc44c27dde93ad734dc9fe7df033a92668836dfd" -> "sha256:7b9c42ab3fded1860040afae7d7f4529bb3186ecc4b93ed9ec515189e687b14c" [label=""];
  "sha256:dcc912abee783fbd3b69245234d86fb8f00b6d42d9dd1ea5837a6f66181976be" -> "sha256:7b9c42ab3fded1860040afae7d7f4529bb3186ecc4b93ed9ec515189e687b14c" [label=""];
  "sha256:7b9c42ab3fded1860040afae7d7f4529bb3186ecc4b93ed9ec515189e687b14c" -> "sha256:aeda1a3b4d4c3d8f37ab0b3c319bd18a99b4dc08d87880de10b13ff21418c489" [label=""];
  "sha256:aeda1a3b4d4c3d8f37ab0b3c319bd18a99b4dc08d87880de10b13ff21418c489" -> "sha256:3b307e1675b1e2b20d90fce9d3e8ab3b04e4d5147b668f09dd03e58974addf0f" [label=""];
}

